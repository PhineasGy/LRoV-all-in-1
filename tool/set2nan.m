function varargout = set2nan(varargin)
% 改寫 By Gy 20230825

if isnumeric(varargin{1}) 
    nCols=varargin{1};
    varargin(1)=[];
    idx=2;
else
    nCols=1;
    idx=1;
end
    
nn=length(varargin);
S=varargin{1};
if nn<2, RHS=true; else RHS=varargin{2}; end
    
fields=fieldnames(S);

sname=inputname(idx); 
if isempty(sname), sname='S'; end


if RHS
    
 assigns= cellfun(@(f) [f ' = nan;     '],fields,'uniformoutput',0);
 
else %LHS
    
 assigns= cellfun(@(f) [ sname '.' f ' = ' f ';    '],fields,'uniformoutput',0);
    
end

L0=length(assigns);
L=ceil(L0/nCols)*nCols;
Template=false(nCols,L/nCols);
Template(1:L0)=true;
Template=Template.';


Table=cell(size(Template));
Table(:)={' '};
Table(Template)=assigns;

TextCols=cell(1,nCols);
for ii=1:nCols
 TextCols{ii}=char(Table(:,ii));
end


assigns=[TextCols{:}];


  if nargout
      varargout={assigns}; 
  else
      disp ' '
      disp(assigns),
      disp ' '
  end
end