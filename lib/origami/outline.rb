=begin

= File
	outline.rb

= Info
	This file is part of Origami, PDF manipulation framework for Ruby
	Copyright (C) 2010	Guillaume Delugré <guillaume@security-labs.org>
	All right reserved.
	
  Origami is free software: you can redistribute it and/or modify
  it under the terms of the GNU Lesser General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Origami is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public License
  along with Origami.  If not, see <http://www.gnu.org/licenses/>.

=end

module Origami

  class Outline < Dictionary
    include StandardObject

    field   :Type,            :Type => Name, :Default => :Outlines
    field   :First,           :Type => Dictionary
    field   :Last,            :Type => Dictionary
    field   :Count,           :Type => Integer
  end

  class OutlineItem < Dictionary
    include StandardObject

    module Style
      ITALIC  = 1 << 0
      BOLD    = 1 << 1
    end

    field   :Title,           :Type => String, :Required => true
    field   :Parent,          :Type => Dictionary, :Required => true
    field   :Prev,            :Type => Dictionary
    field   :Next,            :Type => Dictionary
    field   :First,           :Type => Dictionary
    field   :Last,            :Type => Dictionary
    field   :Count,           :Type => Integer
    field   :Dest,            :Type => [ Name, String, Array ]
    field   :A,               :Type => Dictionary, :Version => "1.1"
    field   :SE,              :Type => Dictionary, :Version => "1.3"
    field   :C,               :Type => Array, :Default => [ 0.0, 0.0, 0.0 ], :Version => "1.4"
    field   :F,               :Type => Integer, :Default => 0, :Version => "1.4"
  end

end
