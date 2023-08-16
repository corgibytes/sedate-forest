﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TreeSitterSharp.Native;

namespace TreeSitterSharp;
public unsafe class Language
{
    private TsLanguage* _internalLanguage;

    public static Language FromNative(TsLanguage* language)
    {
        return new Language() { _internalLanguage = language };
    }

    public TsLanguage* ToNative()
    {
        return _internalLanguage;
    }
}
