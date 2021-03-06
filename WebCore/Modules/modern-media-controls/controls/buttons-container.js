/*
 * Copyright (C) 2016 Apple Inc. All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

class ButtonsContainer extends LayoutNode
{

    constructor({ buttons = [], padding = 0, margin = 0, cssClassName = "" } = {})
    {
        super(`<div class="buttons-container ${cssClassName}">`);

        this.margin = margin;
        this.padding = padding;
        this.buttons = buttons;
    }

    // Public

    get buttons()
    {
        return this._buttons;
    }

    set buttons(buttons)
    {
        if (!Array.isArray(buttons))
            return;

        this._buttons = buttons;
        this.needsLayout = true;
    }

    layout()
    {
        super.layout();

        const children = [];
        let x = this.padding;

        this._buttons.forEach(button => {
            if (!button.enabled || button.dropped)
                return;
            button.x = x;
            x += button.width + this.margin;
            children.push(button);
        });

        if (children.length)
            this.width = x - this.margin + this.padding;
        else
            this.width = this.padding * 2;

        this.children = children;
    }

}
