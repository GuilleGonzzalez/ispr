<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>dct</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>input_r</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>input</originalName>
              <rtlName/>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>1</if_type>
          <array_size>64</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>output_r</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>output</originalName>
              <rtlName/>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>1</if_type>
          <array_size>64</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>12</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>7</id>
              <name>row_outbuf_i</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>row_outbuf_i_U</rtlName>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>22</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>8</id>
              <name>col_outbuf_i</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>col_outbuf_i_U</rtlName>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>23</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>9</id>
              <name>col_inbuf</name>
              <fileName>dct.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>27</lineNumber>
              <contextFuncName>dct_2d</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="11" tracking_level="0" version="0">
                  <first>C:\Users\guill\Desktop\hls_lab3</first>
                  <second class_id="12" tracking_level="0" version="0">
                    <count>2</count>
                    <item_version>0</item_version>
                    <item class_id="13" tracking_level="0" version="0">
                      <first class_id="14" tracking_level="0" version="0">
                        <first>dct.c</first>
                        <second>dct</second>
                      </first>
                      <second>87</second>
                    </item>
                    <item>
                      <first>
                        <first>dct.c</first>
                        <second>dct_2d</second>
                      </first>
                      <second>27</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>col_inbuf</originalName>
              <rtlName>col_inbuf_U</rtlName>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>24</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>11</id>
              <name>buf_2d_in</name>
              <fileName>dct.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>81</lineNumber>
              <contextFuncName>dct</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\guill\Desktop\hls_lab3</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>dct.c</first>
                        <second>dct</second>
                      </first>
                      <second>81</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>buf_2d_in</originalName>
              <rtlName>buf_2d_in_U</rtlName>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>25</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>12</id>
              <name>buf_2d_out</name>
              <fileName>dct.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>82</lineNumber>
              <contextFuncName>dct</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\guill\Desktop\hls_lab3</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>dct.c</first>
                        <second>dct</second>
                      </first>
                      <second>82</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>buf_2d_out</originalName>
              <rtlName>buf_2d_out_U</rtlName>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>26</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>13</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>read_data_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>3</count>
            <item_version>0</item_version>
            <item>28</item>
            <item>29</item>
            <item>30</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>14</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>Loop_Row_DCT_Loop_pr_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>32</item>
            <item>33</item>
            <item>34</item>
            <item>51</item>
            <item>72</item>
            <item>73</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>15</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>Loop_Xpose_Row_Outer_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>5</count>
            <item_version>0</item_version>
            <item>36</item>
            <item>37</item>
            <item>38</item>
            <item>71</item>
            <item>74</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>16</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>Loop_Col_DCT_Loop_pr_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>40</item>
            <item>41</item>
            <item>42</item>
            <item>52</item>
            <item>70</item>
            <item>75</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_12">
          <Value>
            <Obj>
              <type>0</type>
              <id>17</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>Loop_Xpose_Col_Outer_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>5</count>
            <item_version>0</item_version>
            <item>44</item>
            <item>45</item>
            <item>46</item>
            <item>69</item>
            <item>76</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_13">
          <Value>
            <Obj>
              <type>0</type>
              <id>18</id>
              <name/>
              <fileName>dct.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>90</lineNumber>
              <contextFuncName>dct</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\guill\Desktop\hls_lab3</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>dct.c</first>
                        <second>dct</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>write_data_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>5</count>
            <item_version>0</item_version>
            <item>48</item>
            <item>49</item>
            <item>50</item>
            <item>68</item>
            <item>77</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_14">
          <Value>
            <Obj>
              <type>0</type>
              <id>19</id>
              <name/>
              <fileName>dct.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>91</lineNumber>
              <contextFuncName>dct</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\guill\Desktop\hls_lab3</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>dct.c</first>
                        <second>dct</second>
                      </first>
                      <second>91</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>7</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_15">
          <Value>
            <Obj>
              <type>2</type>
              <id>21</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_16">
          <Value>
            <Obj>
              <type>2</type>
              <id>27</id>
              <name>read_data</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:read_data&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_17">
          <Value>
            <Obj>
              <type>2</type>
              <id>31</id>
              <name>Loop_Row_DCT_Loop_pr</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:Loop_Row_DCT_Loop_pr&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_18">
          <Value>
            <Obj>
              <type>2</type>
              <id>35</id>
              <name>Loop_Xpose_Row_Outer</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:Loop_Xpose_Row_Outer&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_19">
          <Value>
            <Obj>
              <type>2</type>
              <id>39</id>
              <name>Loop_Col_DCT_Loop_pr</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:Loop_Col_DCT_Loop_pr&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_20">
          <Value>
            <Obj>
              <type>2</type>
              <id>43</id>
              <name>Loop_Xpose_Col_Outer</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:Loop_Xpose_Col_Outer&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_21">
          <Value>
            <Obj>
              <type>2</type>
              <id>47</id>
              <name>write_data</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:write_data&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_22">
          <Obj>
            <type>3</type>
            <id>20</id>
            <name>dct</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>12</count>
            <item_version>0</item_version>
            <item>7</item>
            <item>8</item>
            <item>9</item>
            <item>11</item>
            <item>12</item>
            <item>13</item>
            <item>14</item>
            <item>15</item>
            <item>16</item>
            <item>17</item>
            <item>18</item>
            <item>19</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>35</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_23">
          <id>22</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>7</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>23</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>8</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>24</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>9</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>25</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>11</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>26</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>28</id>
          <edge_type>1</edge_type>
          <source_obj>27</source_obj>
          <sink_obj>13</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>29</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>13</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>30</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>13</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>32</id>
          <edge_type>1</edge_type>
          <source_obj>31</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>33</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>34</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>36</id>
          <edge_type>1</edge_type>
          <source_obj>35</source_obj>
          <sink_obj>15</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>37</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>15</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>38</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>15</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>40</id>
          <edge_type>1</edge_type>
          <source_obj>39</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>41</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>43</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>45</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>46</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>48</id>
          <edge_type>1</edge_type>
          <source_obj>47</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>50</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_46">
          <id>51</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_47">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_48">
          <id>68</id>
          <edge_type>4</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_49">
          <id>69</id>
          <edge_type>4</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_50">
          <id>70</id>
          <edge_type>4</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_51">
          <id>71</id>
          <edge_type>4</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>15</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_52">
          <id>72</id>
          <edge_type>4</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_53">
          <id>73</id>
          <edge_type>4</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>14</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_54">
          <id>74</id>
          <edge_type>4</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>15</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_55">
          <id>75</id>
          <edge_type>4</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>16</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_56">
          <id>76</id>
          <edge_type>4</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_57">
          <id>77</id>
          <edge_type>4</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>18</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_58">
        <mId>1</mId>
        <mTag>dct</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>647</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_59">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>6</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_60">
              <type>0</type>
              <name>read_data_U0</name>
              <ssdmobj_id>13</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>2</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_61">
                  <port class_id="29" tracking_level="1" version="0" object_id="_62">
                    <name>input</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_63">
                    <type>0</type>
                    <name>read_data_U0</name>
                    <ssdmobj_id>13</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_64">
                  <port class_id_reference="29" object_id="_65">
                    <name>buf</name>
                    <dir>2</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_66">
              <type>0</type>
              <name>Loop_Row_DCT_Loop_pr_U0</name>
              <ssdmobj_id>14</ssdmobj_id>
              <pins>
                <count>3</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_67">
                  <port class_id_reference="29" object_id="_68">
                    <name>buf_2d_in</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_69">
                    <type>0</type>
                    <name>Loop_Row_DCT_Loop_pr_U0</name>
                    <ssdmobj_id>14</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_70">
                  <port class_id_reference="29" object_id="_71">
                    <name>row_outbuf_i</name>
                    <dir>2</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_69"/>
                </item>
                <item class_id_reference="28" object_id="_72">
                  <port class_id_reference="29" object_id="_73">
                    <name>dct_coeff_table</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_69"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_74">
              <type>0</type>
              <name>Loop_Xpose_Row_Outer_U0</name>
              <ssdmobj_id>15</ssdmobj_id>
              <pins>
                <count>2</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_75">
                  <port class_id_reference="29" object_id="_76">
                    <name>row_outbuf_i</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_77">
                    <type>0</type>
                    <name>Loop_Xpose_Row_Outer_U0</name>
                    <ssdmobj_id>15</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_78">
                  <port class_id_reference="29" object_id="_79">
                    <name>col_inbuf</name>
                    <dir>2</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_77"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_80">
              <type>0</type>
              <name>Loop_Col_DCT_Loop_pr_U0</name>
              <ssdmobj_id>16</ssdmobj_id>
              <pins>
                <count>3</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_81">
                  <port class_id_reference="29" object_id="_82">
                    <name>col_inbuf</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_83">
                    <type>0</type>
                    <name>Loop_Col_DCT_Loop_pr_U0</name>
                    <ssdmobj_id>16</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_84">
                  <port class_id_reference="29" object_id="_85">
                    <name>col_outbuf_i</name>
                    <dir>2</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_83"/>
                </item>
                <item class_id_reference="28" object_id="_86">
                  <port class_id_reference="29" object_id="_87">
                    <name>dct_coeff_table</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_83"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_88">
              <type>0</type>
              <name>Loop_Xpose_Col_Outer_U0</name>
              <ssdmobj_id>17</ssdmobj_id>
              <pins>
                <count>2</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_89">
                  <port class_id_reference="29" object_id="_90">
                    <name>col_outbuf_i</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_91">
                    <type>0</type>
                    <name>Loop_Xpose_Col_Outer_U0</name>
                    <ssdmobj_id>17</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_92">
                  <port class_id_reference="29" object_id="_93">
                    <name>buf_2d_out</name>
                    <dir>2</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_91"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_94">
              <type>0</type>
              <name>write_data_U0</name>
              <ssdmobj_id>18</ssdmobj_id>
              <pins>
                <count>2</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_95">
                  <port class_id_reference="29" object_id="_96">
                    <name>buf</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_97">
                    <type>0</type>
                    <name>write_data_U0</name>
                    <ssdmobj_id>18</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_98">
                  <port class_id_reference="29" object_id="_99">
                    <name>output</name>
                    <dir>2</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_97"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>5</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_100">
              <type>1</type>
              <name>buf_2d_in</name>
              <ssdmobj_id>11</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id_reference="28" object_id="_101">
                <port class_id_reference="29" object_id="_102">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </source>
              <sink class_id_reference="28" object_id="_103">
                <port class_id_reference="29" object_id="_104">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_105">
              <type>1</type>
              <name>row_outbuf_i</name>
              <ssdmobj_id>7</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id_reference="28" object_id="_106">
                <port class_id_reference="29" object_id="_107">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </source>
              <sink class_id_reference="28" object_id="_108">
                <port class_id_reference="29" object_id="_109">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_77"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_110">
              <type>1</type>
              <name>col_inbuf</name>
              <ssdmobj_id>9</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id_reference="28" object_id="_111">
                <port class_id_reference="29" object_id="_112">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_77"/>
              </source>
              <sink class_id_reference="28" object_id="_113">
                <port class_id_reference="29" object_id="_114">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_83"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_115">
              <type>1</type>
              <name>col_outbuf_i</name>
              <ssdmobj_id>8</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id_reference="28" object_id="_116">
                <port class_id_reference="29" object_id="_117">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_83"/>
              </source>
              <sink class_id_reference="28" object_id="_118">
                <port class_id_reference="29" object_id="_119">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_91"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_120">
              <type>1</type>
              <name>buf_2d_out</name>
              <ssdmobj_id>12</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id_reference="28" object_id="_121">
                <port class_id_reference="29" object_id="_122">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_91"/>
              </source>
              <sink class_id_reference="28" object_id="_123">
                <port class_id_reference="29" object_id="_124">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_97"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_125">
      <states class_id="35" tracking_level="0" version="0">
        <count>12</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_126">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>6</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_127">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_128">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_129">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_130">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_131">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_132">
              <id>13</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_133">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_134">
              <id>13</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_135">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_136">
              <id>14</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_137">
          <id>4</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_138">
              <id>14</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_139">
          <id>5</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_140">
              <id>15</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_141">
          <id>6</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_142">
              <id>15</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_143">
          <id>7</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_144">
              <id>16</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_145">
          <id>8</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_146">
              <id>16</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_147">
          <id>9</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_148">
              <id>17</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_149">
          <id>10</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_150">
              <id>17</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_151">
          <id>11</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_152">
              <id>18</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_153">
          <id>12</id>
          <operations>
            <count>6</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_154">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_155">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_156">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_157">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_158">
              <id>18</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_159">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>11</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_160">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>0</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_161">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_162">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>2</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_163">
          <inState>4</inState>
          <outState>5</outState>
          <condition>
            <id>3</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_164">
          <inState>5</inState>
          <outState>6</outState>
          <condition>
            <id>4</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_165">
          <inState>6</inState>
          <outState>7</outState>
          <condition>
            <id>5</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_166">
          <inState>7</inState>
          <outState>8</outState>
          <condition>
            <id>6</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_167">
          <inState>8</inState>
          <outState>9</outState>
          <condition>
            <id>7</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_168">
          <inState>9</inState>
          <outState>10</outState>
          <condition>
            <id>8</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_169">
          <inState>10</inState>
          <outState>11</outState>
          <condition>
            <id>9</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_170">
          <inState>11</inState>
          <outState>12</outState>
          <condition>
            <id>10</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_171">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>Loop_Col_DCT_Loop_pr_U0 (Loop_Col_DCT_Loop_pr)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>8</second>
            </item>
            <item>
              <first>FF</first>
              <second>1019</second>
            </item>
            <item>
              <first>LUT</first>
              <second>285</second>
            </item>
          </second>
        </item>
        <item>
          <first>Loop_Row_DCT_Loop_pr_U0 (Loop_Row_DCT_Loop_pr)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>8</second>
            </item>
            <item>
              <first>FF</first>
              <second>1019</second>
            </item>
            <item>
              <first>LUT</first>
              <second>285</second>
            </item>
          </second>
        </item>
        <item>
          <first>Loop_Xpose_Col_Outer_U0 (Loop_Xpose_Col_Outer)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>158</second>
            </item>
            <item>
              <first>LUT</first>
              <second>169</second>
            </item>
          </second>
        </item>
        <item>
          <first>Loop_Xpose_Row_Outer_U0 (Loop_Xpose_Row_Outer)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>1354</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2306</second>
            </item>
          </second>
        </item>
        <item>
          <first>read_data_U0 (read_data)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>1351</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2289</second>
            </item>
          </second>
        </item>
        <item>
          <first>write_data_U0 (write_data)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>153</second>
            </item>
            <item>
              <first>LUT</first>
              <second>167</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>buf_2d_in_U</first>
          <second>
            <count>7</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>8</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>128</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>2</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2048</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>8</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>buf_2d_out_U</first>
          <second>
            <count>7</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>64</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>16</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>2</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2048</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>col_inbuf_U</first>
          <second>
            <count>7</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>8</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>128</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>2</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2048</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>8</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>col_outbuf_i_U</first>
          <second>
            <count>7</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>64</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>16</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>2</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2048</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>row_outbuf_i_U</first>
          <second>
            <count>7</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>64</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>16</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>2</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2048</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
          </second>
        </item>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>Loop_Col_DCT_Loop_pr_U0 (Loop_Col_DCT_Loop_pr)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>16</item>
          </second>
        </item>
        <item>
          <first>Loop_Row_DCT_Loop_pr_U0 (Loop_Row_DCT_Loop_pr)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>14</item>
          </second>
        </item>
        <item>
          <first>Loop_Xpose_Col_Outer_U0 (Loop_Xpose_Col_Outer)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>17</item>
          </second>
        </item>
        <item>
          <first>Loop_Xpose_Row_Outer_U0 (Loop_Xpose_Row_Outer)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>15</item>
          </second>
        </item>
        <item>
          <first>read_data_U0 (read_data)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>13</item>
          </second>
        </item>
        <item>
          <first>write_data_U0 (write_data)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>18</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>buf_2d_in_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>59</item>
          </second>
        </item>
        <item>
          <first>buf_2d_out_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>77</item>
          </second>
        </item>
        <item>
          <first>col_inbuf_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>41</item>
          </second>
        </item>
        <item>
          <first>col_outbuf_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>22</item>
          </second>
        </item>
        <item>
          <first>row_outbuf_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>1</item>
          </second>
        </item>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>12</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>7</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>8</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>9</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>11</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>12</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>13</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>14</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>15</first>
        <second>
          <first>4</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>16</first>
        <second>
          <first>6</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>17</first>
        <second>
          <first>8</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>18</first>
        <second>
          <first>10</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>19</first>
        <second>
          <first>11</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>20</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>11</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_172">
        <region_name>dct</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </basic_blocks>
        <nodes>
          <count>16</count>
          <item_version>0</item_version>
          <item>4</item>
          <item>5</item>
          <item>6</item>
          <item>7</item>
          <item>8</item>
          <item>9</item>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
          <item>14</item>
          <item>15</item>
          <item>16</item>
          <item>17</item>
          <item>18</item>
          <item>19</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>11</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>32</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
      <item>
        <first>36</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>40</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>9</item>
        </second>
      </item>
      <item>
        <first>44</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>48</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>12</item>
        </second>
      </item>
      <item>
        <first>52</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>15</item>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>13</item>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>66</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>14</item>
          <item>14</item>
        </second>
      </item>
      <item>
        <first>74</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>16</item>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>82</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>18</item>
          <item>18</item>
        </second>
      </item>
      <item>
        <first>89</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>17</item>
          <item>17</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>buf_2d_in_alloca_fu_44</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>buf_2d_out_alloca_fu_48</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>12</item>
        </second>
      </item>
      <item>
        <first>col_inbuf_alloca_fu_40</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>9</item>
        </second>
      </item>
      <item>
        <first>col_outbuf_i_alloca_fu_36</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>row_outbuf_i_alloca_fu_32</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>6</count>
      <item_version>0</item_version>
      <item>
        <first>grp_Loop_Col_DCT_Loop_pr_fu_74</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>16</item>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>grp_Loop_Row_DCT_Loop_pr_fu_66</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>14</item>
          <item>14</item>
        </second>
      </item>
      <item>
        <first>grp_Loop_Xpose_Col_Outer_fu_89</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>17</item>
          <item>17</item>
        </second>
      </item>
      <item>
        <first>grp_Loop_Xpose_Row_Outer_fu_52</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>15</item>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>grp_read_data_fu_58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>13</item>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>grp_write_data_fu_82</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>18</item>
          <item>18</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="65" tracking_level="0" version="0">
        <first class_id="66" tracking_level="0" version="0">
          <first>dct_coeff_table</first>
          <second>100</second>
        </first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>14</item>
          <item>16</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="67" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_port_io_nodes>
    <port2core class_id="68" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="69" tracking_level="0" version="0">
        <first>1</first>
        <second>RAM</second>
      </item>
      <item>
        <first>2</first>
        <second>RAM</second>
      </item>
    </port2core>
    <node2core>
      <count>5</count>
      <item_version>0</item_version>
      <item>
        <first>7</first>
        <second>RAM</second>
      </item>
      <item>
        <first>8</first>
        <second>RAM</second>
      </item>
      <item>
        <first>9</first>
        <second>RAM</second>
      </item>
      <item>
        <first>11</first>
        <second>RAM</second>
      </item>
      <item>
        <first>12</first>
        <second>RAM</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
