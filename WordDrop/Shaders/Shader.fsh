//
//  Shader.fsh
//  WordDrop
//
//  Created by Tyler Hargett on 11/18/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
