Shader "ReadShader" {
	Properties{
		[IntRange] _StencilRef("Stencil Reference Value", Range(0,255)) = 0
	}

	SubShader{
		Tags{ "RenderType" = "Opaque" "Queue" = "Geometry+1000"}

		ColorMask 0
		ZWrite off

		Stencil{
			Ref[_StencilRef]
			Comp Equal
			Pass Keep
			Fail Replace
		}
		Pass{
		}
	}
}