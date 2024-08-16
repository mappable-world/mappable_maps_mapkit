package world.mappable.maps.flutter.view

import android.content.Context
import world.mappable.maps.flutter.LifecycleListener
import world.mappable.runtime.view.PlatformGLTextureView
import world.mappable.runtime.view.internal.PlatformGLRenderer

class TextureView constructor(context: Context, id: Int, factory: ViewFactory) :
    PlatformGLTextureView(context), FlutterView, LifecycleListener {
    private val id = id
    private val factory = factory
    private var isInitialize = false

    init {
        factory.getLifecycle().addListener(this)
    }

    override fun dispose() {
        factory.removeView(id)
    }

    override fun startView() {
        isInitialize = true
        onContextCreated()
        start()
        (renderer as ViewRenderer).init()
    }

    override fun createRenderer(): PlatformGLRenderer {
        return ViewRenderer(this)
    }

    override fun start() {
        if (isInitialize && factory.getLifecycle().isForeground()) {
            super.start()
        }
    }

    override fun onContextCreated() {
        if (isInitialize) {
            super.onContextCreated()
        }
    }

    override fun onSizeChanged(width: Int, height: Int) {
        if (isInitialize) {
            super.onSizeChanged(width, height)
        }
    }

    override fun onForeground() {
        if (isInitialize) {
            start()
            resume()
        }
    }

    override fun onBackground() {
        if (isInitialize) {
            pause()
            stop()
        }
    }

    external override fun getPlatformViewPtr(): Long
}
