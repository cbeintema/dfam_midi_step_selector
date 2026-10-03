{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "arm64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      740,
      640
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "toolbarvisible": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            15,
            680,
            24
          ],
          "text": "DFAM MIDI STEP SELECTOR  |  stereo CV: ADV + TRIGGER",
          "fontsize": 16,
          "presentation": 1,
          "presentation_rect": [
            10,
            2,
            690,
            20
          ]
        }
      },
      {
        "box": {
          "id": "notein",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            60,
            55,
            22
          ],
          "text": "notein",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "pack",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            92,
            75,
            22
          ],
          "text": "pack 0 0",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            125,
            135,
            22
          ],
          "text": "js dfam_engine.js",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "vline",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            165,
            70,
            22
          ],
          "text": "line~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "trigline",
          "maxclass": "newobj",
          "patching_rect": [
            140,
            165,
            70,
            22
          ],
          "text": "line~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "out",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            205,
            80,
            22
          ],
          "text": "plugout~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "statuslabel",
          "maxclass": "comment",
          "patching_rect": [
            270,
            60,
            90,
            22
          ],
          "text": "STATUS",
          "presentation": 1,
          "presentation_rect": [
            385,
            120,
            80,
            17
          ]
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "patching_rect": [
            270,
            85,
            425,
            40
          ],
          "text": "DISARMED",
          "presentation": 1,
          "presentation_rect": [
            385,
            139,
            315,
            25
          ]
        }
      },
      {
        "box": {
          "id": "steplabel",
          "maxclass": "comment",
          "patching_rect": [
            270,
            140,
            110,
            22
          ],
          "text": "STEP",
          "presentation": 1,
          "presentation_rect": [
            375,
            26,
            65,
            17
          ]
        }
      },
      {
        "box": {
          "id": "stepdisplay",
          "maxclass": "number",
          "patching_rect": [
            270,
            165,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            375,
            45,
            55,
            22
          ]
        }
      },
      {
        "box": {
          "id": "busylabel",
          "maxclass": "comment",
          "patching_rect": [
            370,
            140,
            70,
            22
          ],
          "text": "BUSY",
          "presentation": 1,
          "presentation_rect": [
            505,
            26,
            60,
            17
          ]
        }
      },
      {
        "box": {
          "id": "busydisplay",
          "maxclass": "number",
          "patching_rect": [
            370,
            165,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            45,
            55,
            22
          ]
        }
      },
      {
        "box": {
          "id": "armlabel",
          "maxclass": "comment",
          "patching_rect": [
            20,
            265,
            115,
            22
          ],
          "text": "ARM OUTPUT",
          "presentation": 1,
          "presentation_rect": [
            10,
            26,
            75,
            17
          ]
        }
      },
      {
        "box": {
          "id": "armtoggle",
          "maxclass": "toggle",
          "patching_rect": [
            20,
            290,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            45,
            22,
            22
          ]
        }
      },
      {
        "box": {
          "id": "armpre",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            290,
            100,
            22
          ],
          "text": "prepend arm",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "calbl",
          "maxclass": "comment",
          "patching_rect": [
            180,
            265,
            210,
            22
          ],
          "text": "SET STEP",
          "presentation": 1,
          "presentation_rect": [
            240,
            26,
            85,
            17
          ]
        }
      },
      {
        "box": {
          "id": "calnum",
          "maxclass": "number",
          "patching_rect": [
            180,
            290,
            64,
            22
          ],
          "minimum": 1,
          "maximum": 8,
          "presentation": 1,
          "presentation_rect": [
            240,
            45,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "calpre",
          "maxclass": "newobj",
          "patching_rect": [
            252,
            290,
            125,
            22
          ],
          "text": "prepend setstep",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "baselbl",
          "maxclass": "comment",
          "patching_rect": [
            20,
            345,
            135,
            22
          ],
          "text": "BASE NOTE",
          "presentation": 1,
          "presentation_rect": [
            105,
            26,
            100,
            17
          ]
        }
      },
      {
        "box": {
          "id": "basenum",
          "maxclass": "number",
          "patching_rect": [
            20,
            370,
            65,
            22
          ],
          "minimum": 0,
          "maximum": 120,
          "presentation": 1,
          "presentation_rect": [
            105,
            45,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "basepre",
          "maxclass": "newobj",
          "patching_rect": [
            95,
            370,
            125,
            22
          ],
          "text": "prepend setbase",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "highlbl",
          "maxclass": "comment",
          "patching_rect": [
            245,
            345,
            125,
            22
          ],
          "text": "HIGH ms",
          "presentation": 1,
          "presentation_rect": [
            10,
            120,
            95,
            17
          ]
        }
      },
      {
        "box": {
          "id": "highnum",
          "maxclass": "flonum",
          "patching_rect": [
            245,
            370,
            65,
            22
          ],
          "minimum": 0.2,
          "maximum": 20.0,
          "presentation": 1,
          "presentation_rect": [
            10,
            139,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "highpre",
          "maxclass": "newobj",
          "patching_rect": [
            320,
            370,
            130,
            22
          ],
          "text": "prepend sethigh",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "lowlbl",
          "maxclass": "comment",
          "patching_rect": [
            475,
            345,
            125,
            22
          ],
          "text": "LOW ms",
          "presentation": 1,
          "presentation_rect": [
            125,
            120,
            85,
            17
          ]
        }
      },
      {
        "box": {
          "id": "lownum",
          "maxclass": "flonum",
          "patching_rect": [
            475,
            370,
            65,
            22
          ],
          "minimum": 0.2,
          "maximum": 20.0,
          "presentation": 1,
          "presentation_rect": [
            125,
            139,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lowpre",
          "maxclass": "newobj",
          "patching_rect": [
            550,
            370,
            125,
            22
          ],
          "text": "prepend setlow",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "levellbl",
          "maxclass": "comment",
          "patching_rect": [
            20,
            425,
            150,
            22
          ],
          "text": "CV SCALE",
          "presentation": 1,
          "presentation_rect": [
            240,
            120,
            110,
            17
          ]
        }
      },
      {
        "box": {
          "id": "levelnum",
          "maxclass": "flonum",
          "patching_rect": [
            20,
            450,
            65,
            22
          ],
          "minimum": 0.0,
          "maximum": 0.5,
          "presentation": 1,
          "presentation_rect": [
            240,
            139,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "levelpre",
          "maxclass": "newobj",
          "patching_rect": [
            95,
            450,
            125,
            22
          ],
          "text": "prepend setlevel",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "help1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            505,
            680,
            25
          ],
          "text": "Choose an ES-9 stereo output pair. Left jack -> DFAM ADV/CLOCK; right jack -> DFAM TRIGGER input.",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "help2",
          "maxclass": "comment",
          "patching_rect": [
            20,
            533,
            680,
            25
          ],
          "text": "Align DFAM step 1, set current step 1, put DFAM in Run mode, then arm.",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "help3",
          "maxclass": "comment",
          "patching_rect": [
            20,
            561,
            680,
            25
          ],
          "text": "Device starts disarmed. If hardware/software step positions diverge, disarm and recalibrate.",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "load",
          "maxclass": "newobj",
          "patching_rect": [
            520,
            65,
            70,
            22
          ],
          "text": "loadbang",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "defaults",
          "maxclass": "message",
          "patching_rect": [
            520,
            95,
            150,
            22
          ],
          "text": "36 10. 10. 0.5 1",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "patching_rect": [
            520,
            125,
            155,
            22
          ],
          "text": "unpack i f f f i",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "outtypelbl",
          "maxclass": "comment",
          "patching_rect": [
            10,
            610,
            140,
            20
          ],
          "text": "AUDIO OUT",
          "presentation": 1,
          "presentation_rect": [
            10,
            73,
            120,
            17
          ]
        }
      },
      {
        "box": {
          "id": "outtype",
          "maxclass": "umenu",
          "patching_rect": [
            10,
            635,
            190,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            92,
            170,
            22
          ]
        }
      },
      {
        "box": {
          "id": "outchanlbl",
          "maxclass": "comment",
          "patching_rect": [
            220,
            610,
            145,
            20
          ],
          "text": "STEREO PAIR",
          "presentation": 1,
          "presentation_rect": [
            200,
            73,
            120,
            17
          ]
        }
      },
      {
        "box": {
          "id": "outchan",
          "maxclass": "umenu",
          "patching_rect": [
            220,
            635,
            190,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            200,
            92,
            235,
            22
          ]
        }
      },
      {
        "box": {
          "id": "advtestlbl",
          "maxclass": "comment",
          "patching_rect": [
            440,
            610,
            90,
            20
          ],
          "text": "HOLD ADV",
          "presentation": 1,
          "presentation_rect": [
            535,
            73,
            85,
            17
          ]
        }
      },
      {
        "box": {
          "id": "advtest",
          "maxclass": "toggle",
          "patching_rect": [
            440,
            635,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            560,
            93,
            20,
            20
          ]
        }
      },
      {
        "box": {
          "id": "advscale",
          "maxclass": "newobj",
          "patching_rect": [
            440,
            665,
            65,
            22
          ],
          "text": "* 0.5",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "advsig",
          "maxclass": "newobj",
          "patching_rect": [
            440,
            695,
            65,
            22
          ],
          "text": "sig~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "advsum",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            185,
            55,
            22
          ],
          "text": "+~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "advclip",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            215,
            95,
            22
          ],
          "text": "clip~ 0. 0.5",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "trigtestlbl",
          "maxclass": "comment",
          "patching_rect": [
            560,
            610,
            90,
            20
          ],
          "text": "HOLD TRIG",
          "presentation": 1,
          "presentation_rect": [
            625,
            73,
            85,
            17
          ]
        }
      },
      {
        "box": {
          "id": "trigtest",
          "maxclass": "toggle",
          "patching_rect": [
            560,
            635,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            650,
            93,
            20,
            20
          ]
        }
      },
      {
        "box": {
          "id": "trigscale",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            665,
            65,
            22
          ],
          "text": "* 0.5",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "trigsig",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            695,
            65,
            22
          ],
          "text": "sig~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "trigsum",
          "maxclass": "newobj",
          "patching_rect": [
            140,
            185,
            55,
            22
          ],
          "text": "+~",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "trigclip",
          "maxclass": "newobj",
          "patching_rect": [
            140,
            215,
            95,
            22
          ],
          "text": "clip~ 0. 0.5",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "advpulselbl",
          "maxclass": "comment",
          "patching_rect": [
            680,
            610,
            100,
            20
          ],
          "text": "TEST ADV",
          "presentation": 1,
          "presentation_rect": [
            450,
            73,
            75,
            17
          ]
        }
      },
      {
        "box": {
          "id": "advpulse",
          "maxclass": "button",
          "patching_rect": [
            680,
            635,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            475,
            93,
            20,
            20
          ]
        }
      },
      {
        "box": {
          "id": "advpulsecmd",
          "maxclass": "message",
          "patching_rect": [
            710,
            635,
            75,
            22
          ],
          "text": "testadv",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "midilbl",
          "maxclass": "comment",
          "patching_rect": [
            615,
            265,
            75,
            18
          ],
          "text": "MIDI IN",
          "presentation": 1,
          "presentation_rect": [
            615,
            26,
            75,
            17
          ]
        }
      },
      {
        "box": {
          "id": "midicount",
          "maxclass": "newobj",
          "patching_rect": [
            615,
            290,
            70,
            22
          ],
          "text": "counter",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "midibang",
          "maxclass": "newobj",
          "patching_rect": [
            615,
            265,
            40,
            22
          ],
          "text": "t b",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "mididisplay",
          "maxclass": "number",
          "patching_rect": [
            615,
            320,
            65,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            615,
            45,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "routing",
          "maxclass": "newobj",
          "patching_rect": [
            440,
            635,
            105,
            22
          ],
          "text": "live.routing",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "routeinit",
          "maxclass": "newobj",
          "patching_rect": [
            440,
            610,
            205,
            22
          ],
          "text": "loadmess port audio_outputs",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "typeprep",
          "maxclass": "newobj",
          "patching_rect": [
            10,
            665,
            105,
            22
          ],
          "text": "p umenuprep",
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              64.0,
              146.0,
              1372.0,
              776.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "lefttoolbarpinned": 0,
            "toptoolbarpinned": 0,
            "righttoolbarpinned": 0,
            "bottomtoolbarpinned": 0,
            "toolbars_unpinned_last_save": 0,
            "tallnewobj": 0,
            "boxanimatetime": 200,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "style": "",
            "subpatcher_template": "",
            "assistshowspatchername": 0,
            "cluebar": 0,
            "boxes": [
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    127.0,
                    35.0,
                    22.0
                  ],
                  "text": "clear"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    73.0,
                    80.0,
                    22.0
                  ],
                  "text": "route <none>"
                }
              },
              {
                "box": {
                  "color": [
                    1.0,
                    0.694117647058824,
                    0.0,
                    1.0
                  ],
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 0,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      64.0,
                      146.0,
                      972.0,
                      776.0
                    ],
                    "bglocked": 0,
                    "openinpresentation": 0,
                    "default_fontsize": 12.0,
                    "default_fontface": 0,
                    "default_fontname": "Arial",
                    "gridonopen": 1,
                    "gridsize": [
                      15.0,
                      15.0
                    ],
                    "gridsnaponopen": 1,
                    "objectsnaponopen": 1,
                    "statusbarvisible": 2,
                    "toolbarvisible": 1,
                    "lefttoolbarpinned": 0,
                    "toptoolbarpinned": 0,
                    "righttoolbarpinned": 0,
                    "bottomtoolbarpinned": 0,
                    "toolbars_unpinned_last_save": 0,
                    "tallnewobj": 0,
                    "boxanimatetime": 200,
                    "enablehscroll": 1,
                    "enablevscroll": 1,
                    "devicewidth": 0.0,
                    "description": "",
                    "digest": "",
                    "tags": "",
                    "style": "",
                    "subpatcher_template": "",
                    "assistshowspatchername": 0,
                    "cluebar": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-11",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            193.0,
                            93.0,
                            29.5,
                            22.0
                          ],
                          "text": "1"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-10",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            93.0,
                            29.5,
                            22.0
                          ],
                          "text": "0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            60.0,
                            80.0,
                            22.0
                          ],
                          "text": "route <none>"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-6",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            16.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "bubble": 1,
                          "bubblepoint": 0.0,
                          "bubbleside": 0,
                          "bubbleusescolors": 1,
                          "fontsize": 12.0,
                          "id": "obj-3",
                          "linecount": 4,
                          "maxclass": "live.comment",
                          "numinlets": 0,
                          "numoutlets": 0,
                          "patching_rect": [
                            212.0,
                            245.0,
                            278.0,
                            83.0
                          ],
                          "suppressinlet": 1,
                          "text": "Since the [umenu] object is not a Max for Live object, it does not have a color attribute for when the device is disabled. With this patch we set the  colors manually. ",
                          "textjustification": 0
                        }
                      },
                      {
                        "box": {
                          "id": "obj-1",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "LCD Text / Icon (Inactive)"
                          ],
                          "patching_rect": [
                            183.0,
                            183.0,
                            158.0,
                            22.0
                          ],
                          "text": "t \"LCD Text / Icon (Inactive)\""
                        }
                      },
                      {
                        "box": {
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            47.0,
                            252.0,
                            101.0,
                            22.0
                          ],
                          "text": "prepend textcolor"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 3,
                          "outlettype": [
                            "bang",
                            "bang",
                            ""
                          ],
                          "patching_rect": [
                            47.0,
                            144.0,
                            292.0,
                            22.0
                          ],
                          "text": "sel 1 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "LCD Text / Icon"
                          ],
                          "patching_rect": [
                            47.0,
                            183.0,
                            106.0,
                            22.0
                          ],
                          "text": "t \"LCD Text / Icon\""
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 3,
                          "outlettype": [
                            "bang",
                            "int",
                            "int"
                          ],
                          "patching_rect": [
                            15.0,
                            60.0,
                            83.0,
                            22.0
                          ],
                          "text": "live.thisdevice"
                        }
                      },
                      {
                        "box": {
                          "comment": "(symbol symbol) attribute, color name",
                          "id": "obj-72",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            47.0,
                            291.0,
                            30.0,
                            30.0
                          ]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "midpoints": [
                            192.5,
                            228.0,
                            56.5,
                            228.0
                          ],
                          "source": [
                            "obj-1",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "midpoints": [
                            141.5,
                            129.0,
                            56.5,
                            129.0
                          ],
                          "source": [
                            "obj-10",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "midpoints": [
                            202.5,
                            129.0,
                            56.5,
                            129.0
                          ],
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-2",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "midpoints": [
                            56.5,
                            228.0,
                            56.5,
                            228.0
                          ],
                          "source": [
                            "obj-4",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-1",
                            0
                          ],
                          "source": [
                            "obj-5",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-72",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-8",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-11",
                            0
                          ],
                          "source": [
                            "obj-8",
                            1
                          ]
                        }
                      }
                    ],
                    "originid": "pat-4656"
                  },
                  "patching_rect": [
                    341.0,
                    205.0,
                    89.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "description": "",
                    "digest": "",
                    "globalpatchername": "",
                    "tags": ""
                  },
                  "text": "p InactiveColor"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30.0,
                    127.0,
                    72.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    219.0,
                    205.0,
                    96.0,
                    22.0
                  ],
                  "text": "prepend append"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    219.0,
                    166.0,
                    25.0,
                    22.0
                  ],
                  "text": "iter"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "clear"
                  ],
                  "patching_rect": [
                    219.0,
                    127.0,
                    47.0,
                    22.0
                  ],
                  "text": "t l clear"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-33",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30.0,
                    19.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-34",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    19.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-35",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    270.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-27",
                    0
                  ],
                  "source": [
                    "obj-1",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    0
                  ],
                  "source": [
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-26",
                    0
                  ],
                  "source": [
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-27",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-29",
                    0
                  ],
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-64",
                    0
                  ],
                  "midpoints": [
                    167.5,
                    60.0,
                    350.5,
                    60.0
                  ],
                  "order": 0,
                  "source": [
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-64",
                    0
                  ]
                }
              }
            ],
            "originid": "pat-4654"
          },
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "chanprep",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            665,
            105,
            22
          ],
          "text": "p umenuprep",
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              64.0,
              146.0,
              1372.0,
              776.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "lefttoolbarpinned": 0,
            "toptoolbarpinned": 0,
            "righttoolbarpinned": 0,
            "bottomtoolbarpinned": 0,
            "toolbars_unpinned_last_save": 0,
            "tallnewobj": 0,
            "boxanimatetime": 200,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "style": "",
            "subpatcher_template": "",
            "assistshowspatchername": 0,
            "cluebar": 0,
            "boxes": [
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    127.0,
                    35.0,
                    22.0
                  ],
                  "text": "clear"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    73.0,
                    80.0,
                    22.0
                  ],
                  "text": "route <none>"
                }
              },
              {
                "box": {
                  "color": [
                    1.0,
                    0.694117647058824,
                    0.0,
                    1.0
                  ],
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 0,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      64.0,
                      146.0,
                      972.0,
                      776.0
                    ],
                    "bglocked": 0,
                    "openinpresentation": 0,
                    "default_fontsize": 12.0,
                    "default_fontface": 0,
                    "default_fontname": "Arial",
                    "gridonopen": 1,
                    "gridsize": [
                      15.0,
                      15.0
                    ],
                    "gridsnaponopen": 1,
                    "objectsnaponopen": 1,
                    "statusbarvisible": 2,
                    "toolbarvisible": 1,
                    "lefttoolbarpinned": 0,
                    "toptoolbarpinned": 0,
                    "righttoolbarpinned": 0,
                    "bottomtoolbarpinned": 0,
                    "toolbars_unpinned_last_save": 0,
                    "tallnewobj": 0,
                    "boxanimatetime": 200,
                    "enablehscroll": 1,
                    "enablevscroll": 1,
                    "devicewidth": 0.0,
                    "description": "",
                    "digest": "",
                    "tags": "",
                    "style": "",
                    "subpatcher_template": "",
                    "assistshowspatchername": 0,
                    "cluebar": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-11",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            193.0,
                            93.0,
                            29.5,
                            22.0
                          ],
                          "text": "1"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-10",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            93.0,
                            29.5,
                            22.0
                          ],
                          "text": "0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            60.0,
                            80.0,
                            22.0
                          ],
                          "text": "route <none>"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-6",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            132.0,
                            16.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "bubble": 1,
                          "bubblepoint": 0.0,
                          "bubbleside": 0,
                          "bubbleusescolors": 1,
                          "fontsize": 12.0,
                          "id": "obj-3",
                          "linecount": 4,
                          "maxclass": "live.comment",
                          "numinlets": 0,
                          "numoutlets": 0,
                          "patching_rect": [
                            212.0,
                            245.0,
                            278.0,
                            83.0
                          ],
                          "suppressinlet": 1,
                          "text": "Since the [umenu] object is not a Max for Live object, it does not have a color attribute for when the device is disabled. With this patch we set the  colors manually. ",
                          "textjustification": 0
                        }
                      },
                      {
                        "box": {
                          "id": "obj-1",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "LCD Text / Icon (Inactive)"
                          ],
                          "patching_rect": [
                            183.0,
                            183.0,
                            158.0,
                            22.0
                          ],
                          "text": "t \"LCD Text / Icon (Inactive)\""
                        }
                      },
                      {
                        "box": {
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            47.0,
                            252.0,
                            101.0,
                            22.0
                          ],
                          "text": "prepend textcolor"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 3,
                          "outlettype": [
                            "bang",
                            "bang",
                            ""
                          ],
                          "patching_rect": [
                            47.0,
                            144.0,
                            292.0,
                            22.0
                          ],
                          "text": "sel 1 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "LCD Text / Icon"
                          ],
                          "patching_rect": [
                            47.0,
                            183.0,
                            106.0,
                            22.0
                          ],
                          "text": "t \"LCD Text / Icon\""
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 3,
                          "outlettype": [
                            "bang",
                            "int",
                            "int"
                          ],
                          "patching_rect": [
                            15.0,
                            60.0,
                            83.0,
                            22.0
                          ],
                          "text": "live.thisdevice"
                        }
                      },
                      {
                        "box": {
                          "comment": "(symbol symbol) attribute, color name",
                          "id": "obj-72",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            47.0,
                            291.0,
                            30.0,
                            30.0
                          ]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "midpoints": [
                            192.5,
                            228.0,
                            56.5,
                            228.0
                          ],
                          "source": [
                            "obj-1",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "midpoints": [
                            141.5,
                            129.0,
                            56.5,
                            129.0
                          ],
                          "source": [
                            "obj-10",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "midpoints": [
                            202.5,
                            129.0,
                            56.5,
                            129.0
                          ],
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-2",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "midpoints": [
                            56.5,
                            228.0,
                            56.5,
                            228.0
                          ],
                          "source": [
                            "obj-4",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-1",
                            0
                          ],
                          "source": [
                            "obj-5",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-72",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-8",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-11",
                            0
                          ],
                          "source": [
                            "obj-8",
                            1
                          ]
                        }
                      }
                    ],
                    "originid": "pat-4652"
                  },
                  "patching_rect": [
                    341.0,
                    205.0,
                    89.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "description": "",
                    "digest": "",
                    "globalpatchername": "",
                    "tags": ""
                  },
                  "text": "p InactiveColor"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30.0,
                    127.0,
                    72.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    219.0,
                    205.0,
                    96.0,
                    22.0
                  ],
                  "text": "prepend append"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    219.0,
                    166.0,
                    25.0,
                    22.0
                  ],
                  "text": "iter"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "clear"
                  ],
                  "patching_rect": [
                    219.0,
                    127.0,
                    47.0,
                    22.0
                  ],
                  "text": "t l clear"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-33",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30.0,
                    19.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-34",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    158.0,
                    19.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-35",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    270.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-27",
                    0
                  ],
                  "source": [
                    "obj-1",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    0
                  ],
                  "source": [
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-26",
                    0
                  ],
                  "source": [
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-27",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-29",
                    0
                  ],
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-64",
                    0
                  ],
                  "midpoints": [
                    167.5,
                    60.0,
                    350.5,
                    60.0
                  ],
                  "order": 0,
                  "source": [
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-64",
                    0
                  ]
                }
              }
            ],
            "originid": "pat-4650"
          },
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "typecmd",
          "maxclass": "newobj",
          "patching_rect": [
            10,
            695,
            105,
            22
          ],
          "text": "prepend type",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "chancmd",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            695,
            135,
            22
          ],
          "text": "prepend channel",
          "presentation": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "notein",
            0
          ],
          "destination": [
            "pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "notein",
            1
          ],
          "destination": [
            "pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pack",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            0
          ],
          "destination": [
            "vline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            1
          ],
          "destination": [
            "trigline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vline",
            0
          ],
          "destination": [
            "advsum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigline",
            0
          ],
          "destination": [
            "trigsum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advsum",
            0
          ],
          "destination": [
            "advclip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigsum",
            0
          ],
          "destination": [
            "trigclip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advclip",
            0
          ],
          "destination": [
            "out",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigclip",
            0
          ],
          "destination": [
            "out",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            2
          ],
          "destination": [
            "status",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            3
          ],
          "destination": [
            "stepdisplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            4
          ],
          "destination": [
            "busydisplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "armtoggle",
            0
          ],
          "destination": [
            "armpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "armpre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "calnum",
            0
          ],
          "destination": [
            "calpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "calpre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "basenum",
            0
          ],
          "destination": [
            "basepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "basepre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "highnum",
            0
          ],
          "destination": [
            "highpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "highpre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lownum",
            0
          ],
          "destination": [
            "lowpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lowpre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelnum",
            0
          ],
          "destination": [
            "levelpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelpre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load",
            0
          ],
          "destination": [
            "defaults",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "defaults",
            0
          ],
          "destination": [
            "unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            0
          ],
          "destination": [
            "basenum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            1
          ],
          "destination": [
            "highnum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            2
          ],
          "destination": [
            "lownum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            3
          ],
          "destination": [
            "levelnum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            4
          ],
          "destination": [
            "calnum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "routeinit",
            0
          ],
          "destination": [
            "routing",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "routing",
            0
          ],
          "destination": [
            "typeprep",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "routing",
            2
          ],
          "destination": [
            "typeprep",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "typeprep",
            0
          ],
          "destination": [
            "outtype",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "routing",
            1
          ],
          "destination": [
            "chanprep",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "routing",
            3
          ],
          "destination": [
            "chanprep",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chanprep",
            0
          ],
          "destination": [
            "outchan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "outtype",
            0
          ],
          "destination": [
            "typecmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "typecmd",
            0
          ],
          "destination": [
            "routing",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "outchan",
            0
          ],
          "destination": [
            "chancmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chancmd",
            0
          ],
          "destination": [
            "routing",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advtest",
            0
          ],
          "destination": [
            "advscale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advscale",
            0
          ],
          "destination": [
            "advsig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advsig",
            0
          ],
          "destination": [
            "advsum",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigtest",
            0
          ],
          "destination": [
            "trigscale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigscale",
            0
          ],
          "destination": [
            "trigsig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigsig",
            0
          ],
          "destination": [
            "trigsum",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advpulse",
            0
          ],
          "destination": [
            "advpulsecmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "advpulsecmd",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "notein",
            0
          ],
          "destination": [
            "midibang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midibang",
            0
          ],
          "destination": [
            "midicount",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midicount",
            0
          ],
          "destination": [
            "mididisplay",
            0
          ]
        }
      }
    ],
    "presentation_rect": [
      0.0,
      0.0,
      715.0,
      169.0
    ]
  }
}
