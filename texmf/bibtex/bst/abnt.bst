%%
%% This is file `abnt.bst',
%%
%% This file is an *extensive* modification from a file generated with the docstrip utility.
%% The original source files were:
%% merlin.mbs  (with options: `head,exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% portuges.mbs  (with options: `exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% physjour.mbs  (with options: `exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% geojour.mbs  (with options: `exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% photjour.mbs  (with options: `exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% merlin.mbs  (with options: `tail,exlang,lang,annote,seq-no,nm-rev,jnrlst,aunm-semi,yr-per,tit-it,atit-u,jttl-rm,thtit-a,vnum-nr,volp-com,jdt-pc,jwdpg,jwdvol,num-xser,isbn,issn,doi,blk-com,in-col,portuguese,pp,ed,abr,xedn,jabr,and-xcom,xand,etal-it,nfss,,{}')
%% ----------------------------------------
%% *** abnt ***
%% 
%% Copyright 1994-2011 Patrick W Daly
 % ===============================================================
 % IMPORTANT NOTICE:
 % This bibliographic style (bst) file has been generated from one or
 % more master bibliographic style (mbs) files, listed above.
 %
 % This generated file can be redistributed and/or modified under the terms
 % of the LaTeX Project Public License Distributed from CTAN
 % archives in directory macros/latex/base/lppl.txt; either
 % version 1 of the License, or any later version.
 % ===============================================================
 % Name and version information of the main mbs file:
 % \ProvidesFile{merlin.mbs}[2011/11/18 4.33 (PWD, AO, DPC)]
 %   For use with BibTeX version 0.99a or later
 %-------------------------------------------------------------------
 % This bibliography style file is intended for texts in
 %   PORTUGUESE
 % This is a numerical citation style, and as such is standard LaTeX.
 % It requires no extra package to interface to the main text.
 % The form of the \bibitem entries is
 %   \bibitem{key}...
 % Usage of \cite is as follows:
 %   \cite{key} ==>>          [#]
 %   \cite[chap. 2]{key} ==>> [#, chap. 2]
 % where # is a number determined by the ordering in the reference list.
 % The order in the reference list is that by which the works were originally
 %   cited in the text, or that in the database.
 %---------------------------------------------------------------------

ENTRY
  { %% armazenar o endereço do editor ou da instituição
     % Washington, DC
    address

    %% armazenar uma anotação
    %% The researchers at NYU explore in this paper ...
    annote

    %% armazenar a lista de autores de uma obra
    author

    %% armazenar o título do livro
    booktitle

    %% armazenar o número de um capítulo em um livro
    chapter

    %% armazenar o identificador de objeto digital (DOI) de um artigo de 
    %%   jornal, papel da conferência, capítulo ou livro
    doi

    %% armazenar o número da edição de um livro
    edition

    editor
    translated
    eid

    %% armazenar um aviso para publicações incomuns de um misc
    howpublished

    %% armazenar o nome da instituição que publicou e/ou patrocinou o relatório
    institution
    isbn
    issn

    %% armazenar o nome do jornal ou revista em que o artigo foi publicado
    journal

    key

    language

    %% armazenar o mês durante o trabalho foi publicado ou no caso de um 
    %%   artigo não publicado, o mês durante foi escrito
    month

    %% armazenar qualquer informação que possa ser interessante para o leitor 
    %%   e não se encaixa em nenhum dos outros campos
    note

    %% armazenar o número do relatório para uma entrada de relatório técnico 
    %%   e o número do problema para um artigo de periódico
    number

    %% armazenar o nome da instituição que organizou ou patrocinou a 
    %%   conferência, ou que publicou o manual
    organization

    %% armazenar números de página ou um intervalo de páginas
     % 723--729
    pages

    %% armazenar o nome do editor
     % Springer
    publisher

    %% NBR6023/2018 - 8.9 Dimensoes
    dimensions

    %% armazenar o nome da universidade ou instituição de concessão de diplomas 
    %%   onde a tese foi escrita
     % Vanderbilt University
    school

    %% armazenar o nome da série ou conjunto de livros
     % Lecture Notes in Computer Science
    series

    %% usado para armazenar o título da obra
     % {DNA} sequencing with chain-terminating inhibitors
    title

    subtitle

    %% armazenar um nome mais descritivo do tipo de trabalho
     % Government Report
    type

    %% armazenar o número de volume do periódico ou livro de vários volumes
    volume

    %% armazenar o ano em que o trabalho foi publicado ou no caso de um artigo 
    %% inédito do ano em que foi escrito
    year
    year-presented

    %% armazenar a URL de uma página web
    url
    urldate
  }
  {}
  { label }
INTEGERS { output.state before.all mid.sentence after.sentence after.block }
FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}
STRINGS { s t}
FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.block =
        { add.period$ write$
          newline$
          "\newblock " write$
        }
        { output.state before.all =
            'write$
            { add.period$ " " * write$ }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}
FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}
FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}
FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
  annote missing$
    { "\bibAnnoteFile{" cite$ * "}" * write$ newline$ }
    { "\bibAnnote{" cite$ * "}{" * annote * "}" * write$ newline$
    }
  if$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}
FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}
FUNCTION {add.blank}
{  " " * before.all 'output.state :=
}

FUNCTION {date.block}
{
  skip$
}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}
FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}
FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}
FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}
FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}
FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}
FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}
FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}
FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "\emph{" swap$ * "}" * }
  if$
}
FUNCTION {tie.or.space.prefix}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$
}

FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }

FUNCTION {space.word}
{ " " swap$ * " " * }
 % Here are the language-specific definitions for explicit words.
 % Each function has a name bbl.xxx where xxx is the English word.
 %-------------------------------------------------------------------
 % Begin module:
 % \ProvidesFile{portuges.mbs}[2003/11/06 4.2 (PWD/RA)]

 % The language selected here is PORTUGUESE

%% NBR6023/2018 - Anexo B
FUNCTION {bbl.and}
{ "e"}

FUNCTION {bbl.etal}
{ "et~al." }

FUNCTION {bbl.sl}
{ "s.~l." }

FUNCTION {bbl.sn}
{ "s.~n." }

FUNCTION {bbl.editors}
{ "eds." }

FUNCTION {bbl.editor}
{ "ed." }

FUNCTION {bbl.edby}
{ "editado por" }

FUNCTION {bbl.edition}
{ "ed." }

FUNCTION {bbl.volume}
{ "v." }

FUNCTION {bbl.of}
{ "de" }

FUNCTION {bbl.number}
{ "n." }

FUNCTION {bbl.nr}
{ "n\raise1ex\hbox{\underbar{\scriptsize o}}" }

FUNCTION {bbl.in}
{ "In" }

FUNCTION {bbl.pages}
{ "p." }

FUNCTION {bbl.page}
{ "p." }

FUNCTION {bbl.chapter}
{ "cap." }

FUNCTION {bbl.techrep}
{ "Rel.\ T\'ec." }

FUNCTION {bbl.thesis}
{ "Tese" }

FUNCTION {bbl.url.available}
{ "Dispon\'ivel em" }

FUNCTION {bbl.translated}
{ "Tradu{\c{c}}{\~a}o" }

%% NBR6023/2018 - Anexo A
MACRO {jan} {"jan."}

MACRO {feb} {"fev."}

MACRO {mar} {"mar."}

MACRO {apr} {"abr."}

MACRO {may} {"maio"}

MACRO {jun} {"jun."}

MACRO {jul} {"jul."}

MACRO {aug} {"ago."}

MACRO {sep} {"set."}

MACRO {oct} {"out."}

MACRO {nov} {"nov."}

MACRO {dec} {"dez."}

 % End module: portuges.mbs
 %-------------------------------------------------------------------
 % Begin module:
 % \ProvidesFile{physjour.mbs}[2002/01/14 2.2 (PWD)]
MACRO {aa}{"Astron. \& Astrophys."}
MACRO {aasup}{"Astron. \& Astrophys. Suppl. Ser."}
MACRO {aj} {"Astron. J."}
MACRO {aph} {"Acta Phys."}
MACRO {advp} {"Adv. Phys."}
MACRO {ajp} {"Amer. J. Phys."}
MACRO {ajm} {"Amer. J. Math."}
MACRO {amsci} {"Amer. Sci."}
MACRO {anofd} {"Ann. Fluid Dyn."}
MACRO {am} {"Ann. Math."}
MACRO {ap} {"Ann. Phys. (NY)"}
MACRO {adp} {"Ann. Phys. (Leipzig)"}
MACRO {ao} {"Appl. Opt."}
MACRO {apl} {"Appl. Phys. Lett."}
MACRO {app} {"Astroparticle Phys."}
MACRO {apj} {"Astrophys. J."}
MACRO {apjsup} {"Astrophys. J. Suppl."}
MACRO {apss} {"Astrophys. Space Sci."}
MACRO {araa} {"Ann. Rev. Astron. Astrophys."}
MACRO {baas} {"Bull. Amer. Astron. Soc."}
MACRO {baps} {"Bull. Amer. Phys. Soc."}
MACRO {cmp} {"Comm. Math. Phys."}
MACRO {cpam} {"Commun. Pure Appl. Math."}
MACRO {cppcf} {"Comm. Plasma Phys. \& Controlled Fusion"}
MACRO {cpc} {"Comp. Phys. Comm."}
MACRO {cqg} {"Class. Quant. Grav."}
MACRO {cra} {"C. R. Acad. Sci. A"}
MACRO {fed} {"Fusion Eng. \& Design"}
MACRO {ft} {"Fusion Tech."}
MACRO {grg} {"Gen. Relativ. Gravit."}
MACRO {ieeens} {"IEEE Trans. Nucl. Sci."}
MACRO {ieeeps} {"IEEE Trans. Plasma Sci."}
MACRO {ijimw} {"Interntl. J. Infrared \& Millimeter Waves"}
MACRO {ip} {"Infrared Phys."}
MACRO {irp} {"Infrared Phys."}
MACRO {jap} {"J. Appl. Phys."}
MACRO {jasa} {"J. Acoust. Soc. America"}
MACRO {jcp} {"J. Comp. Phys."}
MACRO {jetp} {"Sov. Phys.--JETP"}
MACRO {jfe} {"J. Fusion Energy"}
MACRO {jfm} {"J. Fluid Mech."}
MACRO {jmp} {"J. Math. Phys."}
MACRO {jne} {"J. Nucl. Energy"}
MACRO {jnec} {"J. Nucl. Energy, C: Plasma Phys., Accelerators, Thermonucl. Res."}
MACRO {jnm} {"J. Nucl. Mat."}
MACRO {jpc} {"J. Phys. Chem."}
MACRO {jpp} {"J. Plasma Phys."}
MACRO {jpsj} {"J. Phys. Soc. Japan"}
MACRO {jsi} {"J. Sci. Instrum."}
MACRO {jvst} {"J. Vac. Sci. \& Tech."}
MACRO {nat} {"Nature"}
MACRO {nature} {"Nature"}
MACRO {nedf} {"Nucl. Eng. \& Design/Fusion"}
MACRO {nf} {"Nucl. Fusion"}
MACRO {nim} {"Nucl. Inst. \& Meth."}
MACRO {nimpr} {"Nucl. Inst. \& Meth. in Phys. Res."}
MACRO {np} {"Nucl. Phys."}
MACRO {npb} {"Nucl. Phys. B"}
MACRO {nt/f} {"Nucl. Tech./Fusion"}
MACRO {npbpc} {"Nucl. Phys. B (Proc. Suppl.)"}
MACRO {inc} {"Nuovo Cimento"}
MACRO {nc} {"Nuovo Cimento"}
MACRO {pf} {"Phys. Fluids"}
MACRO {pfa} {"Phys. Fluids A: Fluid Dyn."}
MACRO {pfb} {"Phys. Fluids B: Plasma Phys."}
MACRO {pl} {"Phys. Lett."}
MACRO {pla} {"Phys. Lett. A"}
MACRO {plb} {"Phys. Lett. B"}
MACRO {prep} {"Phys. Rep."}
MACRO {pnas} {"Proc. Nat. Acad. Sci. USA"}
MACRO {pp} {"Phys. Plasmas"}
MACRO {ppcf} {"Plasma Phys. \& Controlled Fusion"}
MACRO {phitrsl} {"Philos. Trans. Roy. Soc. London"}
MACRO {prl} {"Phys. Rev. Lett."}
MACRO {pr} {"Phys. Rev."}
MACRO {physrev} {"Phys. Rev."}
MACRO {pra} {"Phys. Rev. A"}
MACRO {prb} {"Phys. Rev. B"}
MACRO {prc} {"Phys. Rev. C"}
MACRO {prd} {"Phys. Rev. D"}
MACRO {pre} {"Phys. Rev. E"}
MACRO {ps} {"Phys. Scripta"}
MACRO {procrsl} {"Proc. Roy. Soc. London"}
MACRO {rmp} {"Rev. Mod. Phys."}
MACRO {rsi} {"Rev. Sci. Inst."}
MACRO {science} {"Science"}
MACRO {sciam} {"Sci. Am."}
MACRO {sam} {"Stud. Appl. Math."}
MACRO {sjpp} {"Sov. J. Plasma Phys."}
MACRO {spd} {"Sov. Phys.--Doklady"}
MACRO {sptp} {"Sov. Phys.--Tech. Phys."}
MACRO {spu} {"Sov. Phys.--Uspeki"}
MACRO {st} {"Sky and Telesc."}
 % End module: physjour.mbs
 %-------------------------------------------------------------------
 % Begin module:
 % \ProvidesFile{geojour.mbs}[2002/07/10 2.0h (PWD)]
MACRO {aisr} {"Adv. Space Res."}
MACRO {ag} {"Ann. Geophys."}
MACRO {anigeo} {"Ann. Geofis."}
MACRO {angl} {"Ann. Glaciol."}
MACRO {andmet} {"Ann. d. Meteor."}
MACRO {andgeo} {"Ann. d. Geophys."}
MACRO {andphy} {"Ann. Phys.-Paris"}
MACRO {afmgb} {"Arch. Meteor. Geophys. Bioklimatol."}
MACRO {atph} {"Atm\'osphera"}
MACRO {aao} {"Atmos. Ocean"}
MACRO {ass}{"Astrophys. Space Sci."}
MACRO {atenv} {"Atmos. Environ."}
MACRO {aujag} {"Aust. J. Agr. Res."}
MACRO {aumet} {"Aust. Meteorol. Mag."}
MACRO {blmet} {"Bound.-Lay. Meteorol."}
MACRO {bams} {"Bull. Amer. Meteorol. Soc."}
MACRO {cch} {"Clim. Change"}
MACRO {cdyn} {"Clim. Dynam."}
MACRO {cbul} {"Climatol. Bull."}
MACRO {cap} {"Contrib. Atmos. Phys."}
MACRO {dsr} {"Deep-Sea Res."}
MACRO {dhz} {"Dtsch. Hydrogr. Z."}
MACRO {dao} {"Dynam. Atmos. Oceans"}
MACRO {eco} {"Ecology"}
MACRO {empl}{"Earth, Moon and Planets"}
MACRO {envres} {"Environ. Res."}
MACRO {envst} {"Environ. Sci. Technol."}
MACRO {ecms} {"Estuarine Coastal Mar. Sci."}
MACRO {expa}{"Exper. Astron."}
MACRO {geoint} {"Geofis. Int."}
MACRO {geopub} {"Geofys. Publ."}
MACRO {geogeo} {"Geol. Geofiz."}
MACRO {gafd} {"Geophys. Astrophys. Fluid Dyn."}
MACRO {gfd} {"Geophys. Fluid Dyn."}
MACRO {geomag} {"Geophys. Mag."}
MACRO {georl} {"Geophys. Res. Lett."}
MACRO {grl} {"Geophys. Res. Lett."}
MACRO {ga} {"Geophysica"}
MACRO {gs} {"Geophysics"}
MACRO {ieeetap} {"IEEE Trans. Antenn. Propag."}
MACRO {ijawp} {"Int. J. Air Water Pollut."}
MACRO {ijc} {"Int. J. Climatol."}
MACRO {ijrs} {"Int. J. Remote Sens."}
MACRO {jam} {"J. Appl. Meteorol."}
MACRO {jaot} {"J. Atmos. Ocean. Technol."}
MACRO {jatp} {"J. Atmos. Terr. Phys."}
MACRO {jastp} {"J. Atmos. Solar-Terr. Phys."}
MACRO {jce} {"J. Climate"}
MACRO {jcam} {"J. Climate Appl. Meteor."}
MACRO {jcm} {"J. Climate Meteor."}
MACRO {jcy} {"J. Climatol."}
MACRO {jgr} {"J. Geophys. Res."}
MACRO {jga} {"J. Glaciol."}
MACRO {jh} {"J. Hydrol."}
MACRO {jmr} {"J. Mar. Res."}
MACRO {jmrj} {"J. Meteor. Res. Japan"}
MACRO {jm} {"J. Meteor."}
MACRO {jpo} {"J. Phys. Oceanogr."}
MACRO {jra} {"J. Rech. Atmos."}
MACRO {jaes} {"J. Aeronaut. Sci."}
MACRO {japca} {"J. Air Pollut. Control Assoc."}
MACRO {jas} {"J. Atmos. Sci."}
MACRO {jmts} {"J. Mar. Technol. Soc."}
MACRO {jmsj} {"J. Meteorol. Soc. Japan"}
MACRO {josj} {"J. Oceanogr. Soc. Japan"}
MACRO {jwm} {"J. Wea. Mod."}
MACRO {lao} {"Limnol. Oceanogr."}
MACRO {mwl} {"Mar. Wea. Log"}
MACRO {mau} {"Mausam"}
MACRO {meteor} {"``Meteor'' Forschungsergeb."}
MACRO {map} {"Meteorol. Atmos. Phys."}
MACRO {metmag} {"Meteor. Mag."}
MACRO {metmon} {"Meteor. Monogr."}
MACRO {metrun} {"Meteor. Rundsch."}
MACRO {metzeit} {"Meteor. Z."}
MACRO {metgid} {"Meteor. Gidrol."}
MACRO {mwr} {"Mon. Weather Rev."}
MACRO {nwd} {"Natl. Weather Dig."}
MACRO {nzjmfr} {"New Zeal. J. Mar. Freshwater Res."}
MACRO {npg} {"Nonlin. Proc. Geophys."}
MACRO {om} {"Oceanogr. Meteorol."}
MACRO {ocac} {"Oceanol. Acta"}
MACRO {oceanus} {"Oceanus"}
MACRO {paleoc} {"Paleoceanography"}
MACRO {pce} {"Phys. Chem. Earth"}
MACRO {pmg} {"Pap. Meteor. Geophys."}
MACRO {ppom} {"Pap. Phys. Oceanogr. Meteor."}
MACRO {physzeit} {"Phys. Z."}
MACRO {pps} {"Planet. Space Sci."}
MACRO {pss} {"Planet. Space Sci."}
MACRO {pag} {"Pure Appl. Geophys."}
MACRO {qjrms} {"Quart. J. Roy. Meteorol. Soc."}
MACRO {quatres} {"Quat. Res."}
MACRO {rsci} {"Radio Sci."}
MACRO {rse} {"Remote Sens. Environ."}
MACRO {rgeo} {"Rev. Geophys."}
MACRO {rgsp} {"Rev. Geophys. Space Phys."}
MACRO {rdgeo} {"Rev. Geofis."}
MACRO {revmeta} {"Rev. Meteorol."}
MACRO {sgp}{"Surveys in Geophys."}
MACRO {sp} {"Solar Phys."}
MACRO {ssr} {"Space Sci. Rev."}
MACRO {tellus} {"Tellus"}
MACRO {tac} {"Theor. Appl. Climatol."}
MACRO {tagu} {"Trans. Am. Geophys. Union (EOS)"}
MACRO {wrr} {"Water Resour. Res."}
MACRO {weather} {"Weather"}
MACRO {wafc} {"Weather Forecast."}
MACRO {ww} {"Weatherwise"}
MACRO {wmob} {"WMO Bull."}
MACRO {zeitmet} {"Z. Meteorol."}
 % End module: geojour.mbs
 %-------------------------------------------------------------------
 % Begin module:
 % \ProvidesFile{photjour.mbs}[1999/02/24 2.0b (PWD)]

MACRO {appopt} {"Appl. Opt."}
MACRO {bell} {"Bell Syst. Tech. J."}
MACRO {ell} {"Electron. Lett."}
MACRO {jasp} {"J. Appl. Spectr."}
MACRO {jqe} {"IEEE J. Quantum Electron."}
MACRO {jlwt} {"J. Lightwave Technol."}
MACRO {jmo} {"J. Mod. Opt."}
MACRO {josa} {"J. Opt. Soc. America"}
MACRO {josaa} {"J. Opt. Soc. Amer.~A"}
MACRO {josab} {"J. Opt. Soc. Amer.~B"}
MACRO {jdp} {"J. Phys. (Paris)"}
MACRO {oc} {"Opt. Commun."}
MACRO {ol} {"Opt. Lett."}
MACRO {phtl} {"IEEE Photon. Technol. Lett."}
MACRO {pspie} {"Proc. Soc. Photo-Opt. Instrum. Eng."}
MACRO {sse} {"Solid-State Electron."}
MACRO {sjot} {"Sov. J. Opt. Technol."}
MACRO {sjqe} {"Sov. J. Quantum Electron."}
MACRO {sleb} {"Sov. Phys.--Leb. Inst. Rep."}
MACRO {stph} {"Sov. Phys.--Techn. Phys."}
MACRO {stphl} {"Sov. Techn. Phys. Lett."}
MACRO {vr} {"Vision Res."}
MACRO {zph} {"Z. f. Physik"}
MACRO {zphb} {"Z. f. Physik~B"}
MACRO {zphd} {"Z. f. Physik~D"}
MACRO {CLEO} {"CLEO"}
MACRO {ASSL} {"Adv. Sol.-State Lasers"}
MACRO {OSA}  {"OSA"}
 % End module: photjour.mbs
 %-------------------------------------------------------------------
 % Copyright 1994-2011 Patrick W Doklady

MACRO {acmcs} {"ACM Comput. Surv."}
MACRO {acta} {"Acta Inf."}
MACRO {cacm} {"Commun. ACM"}
MACRO {ibmjrd} {"IBM J. Res. Dev."}
MACRO {ibmsj} {"IBM Syst.~J."}
MACRO {ieeese} {"IEEE Trans. Software Eng."}
MACRO {ieeetc} {"IEEE Trans. Comput."}
MACRO {ieeetcad} {"IEEE Trans. Comput. Aid. Des."}
MACRO {ipl} {"Inf. Process. Lett."}
MACRO {jacm} {"J.~ACM"}
MACRO {jcss} {"J.~Comput. Syst. Sci."}
MACRO {scp} {"Sci. Comput. Program."}
MACRO {sicomp} {"SIAM J. Comput."}
MACRO {tocs} {"ACM Trans. Comput. Syst."}
MACRO {tods} {"ACM Trans. Database Syst."}
MACRO {tog} {"ACM Trans. Graphic."}
MACRO {toms} {"ACM Trans. Math. Software"}
MACRO {toois} {"ACM Trans. Office Inf. Syst."}
MACRO {toplas} {"ACM Trans. Progr. Lang. Syst."}
MACRO {tcs} {"Theor. Comput. Sci."}
% End module

FUNCTION {bibinfo.check}
{ swap$
  duplicate$ missing$
    {
      pop$ pop$
      ""
    }
    { duplicate$ empty$
        {
          swap$ pop$
        }
        { swap$
          pop$
        }
      if$
    }
  if$
}
FUNCTION {bibinfo.warn}
{ swap$
  duplicate$ missing$
    {
      swap$ "missing " swap$ * " in " * cite$ * warning$ pop$
      ""
    }
    { duplicate$ empty$
        {
          swap$ "empty " swap$ * " in " * cite$ * warning$
        }
        { swap$
          pop$
        }
      if$
    }
  if$
}
INTEGERS { nameptr namesleft numnames }

STRINGS  { bibinfo }

FUNCTION {format.names}
{ 'bibinfo :=
  duplicate$ empty$ 'skip$ {
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}{, f.}{, jj}"
      format.name$ "u" change.case$ 
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        {
          nameptr #1
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { "; " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {
                  " " * bbl.etal emphasize *
                }
                { "; " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  } if$
}
FUNCTION {format.names.ed}
{ 'bibinfo :=
  duplicate$ empty$ 'skip$ {
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}{, f.}{, jj}"
      format.name$ "u" change.case$ 
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        {
          nameptr #1
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { "; " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {
                  " " * bbl.etal emphasize *
                }
                { "; " * t * }
              if$
            }
          if$
        }
        't
      if$
      t "others" =
        'skip$
        { " (" * bbl.editor * ")" * }
      if$

      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  } if$
}
FUNCTION {get.bbl.editor}
{ editor num.names$ #1 > 'bbl.editors 'bbl.editor if$ }

FUNCTION {format.editors}
{ editor "editor" format.names 
  duplicate$ empty$ 
    'skip$
    {
      "," *
      " " *
      get.bbl.editor
      "," *
      *
    }
  if$
}
FUNCTION {format.authors}
{ author "author" format.names
  author empty$ editor empty$ or
    'skip$
    {
      "; " *
      editor "editor" format.names.ed *
    }
  if$
}
FUNCTION {format.isbn}
{ isbn "isbn" bibinfo.check
  duplicate$ empty$ 'skip$
    {
      "ISBN " swap$ *
    }
  if$
}

FUNCTION {format.issn}
{ issn "issn" bibinfo.check
  duplicate$ empty$ 'skip$
    {
      "ISSN " swap$ *
    }
  if$
}

FUNCTION {format.doi}
{ doi empty$
    { "" }
    {
      "\doi{" doi * "}" *
    }
  if$
}
FUNCTION {select.language}
{ duplicate$ empty$
    'pop$
    { language empty$
        'skip$
        { "{\selectlanguage{" language * "}" * swap$ * "}" * }
      if$
    }
    if$
}

FUNCTION {format.note}
{
 note empty$
    { "" }
    { note #1 #1 substring$
      duplicate$ "{" =
        'skip$
        {
        }
      if$
      note #2 global.max$ substring$ * "note" bibinfo.check
    }
  if$
}

%% NBR6023/2018 - 8.2 Titulo e Subtitulo
FUNCTION {format.title}
{
  title
  "title" bibinfo.check
  duplicate$ empty$ 
    'skip$
    {
      author empty$ organization empty$ and
      {
        "u" change.case$
      }
      {
        "t" change.case$
      }
      if$
      subtitle empty$ 
      'skip$
      {
        subtitle ": " swap$ * "l" change.case$ *
      }
      if$
      select.language
    }
  if$
}
FUNCTION {format.translated}
{
  translated "translated" format.names
  duplicate$ empty$ 
    'skip$
    {
      bbl.translated ": " * swap$ *
    }
  if$
}
FUNCTION {format.organization}
{
  organization 
  "organization" bibinfo.check
   duplicate$ empty$ 
    'skip$
    {
      "u" change.case$
      select.language
    }
  if$
}
FUNCTION {output.bibitem}
{ newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

%% NBR6023/2018 - 8.6 Data
FUNCTION {format.urldate}
{
  urldate
  "urldate" bibinfo.check
  duplicate$ empty$ 
    'skip$
    {
      "Acesso em:\fmtdate{" swap$ * "}" *
    }
  if$
} 

FUNCTION {word.url.available}
{ bbl.url.available
  ":" *
  " " * }

FUNCTION {format.url}
{
  url
  "url" bibinfo.check
  duplicate$ empty$ 
    'skip$
    {
      word.url.available "\url{" * swap$ * "}" *
      output new.sentence
      format.urldate
    }
  if$
}
FUNCTION {format.thesis.type}
{ type duplicate$ empty$
    'pop$
    { swap$ pop$
      "t" change.case$ "type" bibinfo.check
    }
  if$
}
FUNCTION {format.school.type}
{
  bbl.thesis format.thesis.type
  " - " * school "school" bibinfo.warn *
}

FUNCTION {n.dashify}
{
  't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
                { "-" *
                  t #2 global.max$ substring$ 't :=
                }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
      if$
    }
  while$
}

FUNCTION {word.in}
{ bbl.in
  emphasize
  ":" *
  " " * }

FUNCTION {format.date}
{
  month "month" bibinfo.check
  duplicate$ empty$
  year  "year"  bibinfo.check duplicate$ empty$
    { swap$ 
        'skip$
        { "there's a month but no year in " cite$ * warning$ }
      if$
      *
    }
    { swap$
        'skip$
        {
          swap$
          "\mm{" swap$ *
          "} " * swap$
        }
      if$
      *
    }
  if$
  duplicate$ empty$
    'skip$
    {
      %before.all 'output.state :=
      %after.sentence 'output.state :=
    }
  if$
}
FUNCTION{format.year}
{ year "year" bibinfo.check duplicate$ empty$
    {  "empty year in " cite$ *
       warning$
    }
    { }
  if$
}
FUNCTION {format.btitle}
{ title "title" bibinfo.check
  duplicate$ empty$ 'skip$
    {
      "{\bfseries " swap$ * "}" *
      subtitle empty$ 
      'skip$
      {
        subtitle ": " swap$ * "l" change.case$ *
      }
      if$
      select.language
    }
  if$
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}
FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { bbl.volume volume tie.or.space.prefix
      "volume" bibinfo.check * *
      series "series" bibinfo.check
      duplicate$ empty$ 'pop$
        { swap$ bbl.of space.word * swap$
          emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}
FUNCTION {format.number.series}
{ volume empty$
    { number empty$
        { series field.or.null }
        { series empty$
            { number "number" bibinfo.check }
            { output.state mid.sentence =
                { bbl.number }
                { bbl.number capitalize }
              if$
              number tie.or.space.prefix "number" bibinfo.check * *
              bbl.in space.word *
              series "series" bibinfo.check *
            }
          if$
        }
      if$
    }
    { "" }
  if$
}

FUNCTION {format.edition}
{ edition duplicate$ empty$ 'skip$
    {
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$ change.case$
      "edition" bibinfo.check
      bbl.edition " " * 
      swap$ *
    }
  if$
}
FUNCTION {format.bedition}
{ edition duplicate$ empty$ 'skip$
    {
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$ change.case$
      "edition" bibinfo.check
      " " * bbl.edition *
    }
  if$
}
INTEGERS { multiresult }
FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}
FUNCTION {format.pages}
{ pages duplicate$ empty$ 'skip$
    { duplicate$ multi.page.check
        {
          bbl.pages swap$
          n.dashify
        }
        {
          bbl.page swap$
        }
      if$
      tie.or.space.prefix
      "pages" bibinfo.check
      * *
    }
  if$
}
FUNCTION {format.journal.pages}
{ pages duplicate$ empty$ 'pop$
    { swap$ duplicate$ empty$
        { pop$ pop$ format.pages }
        {
          ", " *
          format.year * ", " *
          swap$
          n.dashify
          pages multi.page.check
            'bbl.pages
            'bbl.page
          if$
          swap$ tie.or.space.prefix
          "pages" bibinfo.check
          * *
          *
        }
      if$
    }
  if$
}
FUNCTION {format.journal.eid}
{ eid "eid" bibinfo.check
  duplicate$ empty$ 'pop$
    { swap$ duplicate$ empty$ 'skip$
      {
          ", " *
      }
      if$
      swap$ *
    }
  if$
}
FUNCTION {format.volume}
{ volume
  "volume" bibinfo.check
  duplicate$ empty$ 
    'skip$
    {
      bbl.volume " " * swap$ *
    }
  if$
}
FUNCTION {format.number}
{ number
  "number" bibinfo.check
  duplicate$ empty$ 
    'skip$
    {
      bbl.number " " * swap$ *
    }
  if$
}
FUNCTION {format.eid}
{ eid empty$
    { format.journal.pages }
    { format.journal.eid }
  if$
}
FUNCTION {format.vol.num.pages}
{ format.volume output
  format.number output
  %format.eid output
  format.pages output
}

FUNCTION {format.chapter.pages}
{ chapter empty$
    'format.pages
    { type empty$
        { bbl.chapter }
        { type "l" change.case$
          "type" bibinfo.check
        }
      if$
      chapter tie.or.space.prefix
      "chapter" bibinfo.check
      * *
      pages empty$
        'skip$
        { ", " * format.pages * }
      if$
    }
  if$
}

FUNCTION {format.booktitle}
{
  booktitle "booktitle" bibinfo.check
  "{\bfseries " swap$ * "}" *
}
FUNCTION {format.in.ed.booktitle}
{ format.booktitle duplicate$ empty$ 'skip$
    {
      editor "editor" format.names.ed duplicate$ empty$ 'pop$
        {
          "," *
          " " *
          get.bbl.editor
          ", " *
          * swap$
          * }
      if$
      word.in swap$ *
    }
  if$
}
FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}
FUNCTION {format.tr.number}
{ number "number" bibinfo.check
  type duplicate$ empty$
    { pop$ bbl.techrep }
    'skip$
  if$
  "type" bibinfo.check
  swap$ duplicate$ empty$
    { pop$ "t" change.case$ }
    { tie.or.space.prefix * * }
  if$
}
FUNCTION {format.article.crossref}
{
  key duplicate$ empty$
    { pop$
      journal duplicate$ empty$
        { "need key or journal for " cite$ * " to crossref " * crossref * warning$ }
        { "journal" bibinfo.check emphasize word.in swap$ * }
      if$
    }
    { word.in swap$ * " " *}
  if$
  " \cite{" * crossref * "}" *
}
FUNCTION {format.crossref.editor}
{ editor #1 "{vv~}{ll}" format.name$
  "editor" bibinfo.check
  editor num.names$ duplicate$
  #2 >
    { pop$
      "editor" bibinfo.check
      " " * bbl.etal
      emphasize
      *
    }
    { #2 <
        'skip$
        { editor #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            {
              "editor" bibinfo.check
              " " * bbl.etal
              emphasize
              *
            }
            {
             bbl.and space.word
              * editor #2 "{vv~}{ll}" format.name$
              "editor" bibinfo.check
              *
            }
          if$
        }
      if$
    }
  if$
}
FUNCTION {format.book.crossref}
{ volume duplicate$ empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      pop$ word.in
    }
    { bbl.volume
      swap$ tie.or.space.prefix "volume" bibinfo.check * * bbl.of space.word *
    }
  if$
  editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
        { series empty$
            { "need editor, key, or series for " cite$ * " to crossref " *
              crossref * warning$
              "" *
            }
            { series emphasize * }
          if$
        }
        { key * }
      if$
    }
    { format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}
FUNCTION {format.incoll.inproc.crossref}
{
  editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
        { format.booktitle duplicate$ empty$
            { "need editor, key, or booktitle for " cite$ * " to crossref " *
              crossref * warning$
            }
            { word.in swap$ * }
          if$
        }
        { word.in key * " " *}
      if$
    }
    { word.in format.crossref.editor * " " *}
  if$
  " \cite{" * crossref * "}" *
}
FUNCTION {format.address}
{
  address
  "address" bibinfo.check
  duplicate$ empty$ 
    {
      "[" bbl.sl emphasize * "]" * *
      "address was replaced by [s.l.] in " cite$ * warning$
    }
    'skip$
  if$
}

%% NBR6023/2018 - 8.4 Local
FUNCTION {format.org.or.pub}
{ 't :=
  ""
  address empty$ t empty$ and
    'skip$
    {
      t empty$
        { format.address *
        }
        {
          address empty$
            'skip$
            { format.address * ": " * }
          if$
          t *
        }
      if$
    }
  if$
}

%% NBR6023/2018 - 8.5 Editora
FUNCTION {format.publisher.address}
{ publisher
  "publisher" bibinfo.warn
  duplicate$ empty$ 
    {
      "[" bbl.sn emphasize * "]" * *
      "publisher was replaced by [s.n.] in" cite$ * warning$
    }
    'skip$
  if$
  format.org.or.pub
}

FUNCTION {format.organization.address}
{ organization "organization" bibinfo.check format.org.or.pub
}

%% 7.7 Publicacao periodica
FUNCTION {article}
{ output.bibitem
  format.authors output new.sentence
  format.title "title" output.check new.block
  format.note output new.block
  crossref missing$
    { format.publisher.address output
      format.vol.num.pages
      format.date "year" output.check new.block
      format.issn output new.block
    }
    { format.article.crossref output.nonnull
      format.pages output
    }
  if$
  format.doi output new.block
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}

%% destina-se a ser usado para artigos em uma coleção
FUNCTION {incollection}
{ output.bibitem
  format.authors output new.sentence
  format.title "title" output.check new.block
  format.note output new.block
  crossref missing$
    { format.booktitle output
      format.address output
      format.vol.num.pages
      format.edition output
      format.date "year" output.check new.block
      format.isbn output new.block
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  format.doi output new.block
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}
FUNCTION {book}
{ output.bibitem
  format.authors output new.sentence
  format.btitle "title" output.check new.block
  format.translated output new.block
  format.bedition output new.block
  crossref missing$
    { format.bvolume output
      format.number.series output
      format.publisher.address output
    }
    {
      format.book.crossref output.nonnull
    }
  if$
  format.date "year" output.check new.block
  format.isbn output new.block
  format.doi output new.block
  format.note output new.block
  dimensions "dimensions" bibinfo.check output new.block
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}
FUNCTION {inbook}
{ output.bibitem
  format.authors output new.sentence
  format.title "title" output.check new.block
  format.in.ed.booktitle "booktitle" output.check new.block
  format.bedition output new.block
  crossref missing$
    {
      format.bvolume output
      format.chapter.pages "chapter and pages" output.check
      format.number.series output
      format.publisher.address output
    }
    {
      format.chapter.pages "chapter and pages" output.check
      format.book.crossref output.nonnull
    }
  if$
  format.date "year" output.check
  crossref missing$
    { format.isbn output }
    'skip$
  if$
  format.doi output
  format.note output
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}
FUNCTION {proceedings}
{ output.bibitem
  format.organization output
  format.number.series output
  format.bvolume output
  format.date "year" output.check
  format.address output new.block
  format.btitle "title" output.check new.block
  format.publisher.address output
  format.date "year" output.check
  format.volume output
  format.isbn output
  format.issn output
  format.doi output
  format.note output
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}
FUNCTION {inproceedings}
{ output.bibitem
  format.authors output new.sentence
  format.title "title" output.check new.block
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      format.date "year" output.check
      format.address output new.block
      publisher empty$
        { format.organization.address output }
        { organization "organization" bibinfo.check output
          format.publisher.address output
        }
      if$
      format.date "year" output.check
      format.pages output
      format.isbn output
      format.issn output
    }
    { format.incoll.inproc.crossref output.nonnull
      format.pages output
    }
  if$
  format.doi output
  format.note output
  howpublished "howpublished" bibinfo.check output new.block
  format.url output
  fin.entry
}
FUNCTION {conference} { inproceedings }
FUNCTION {thesis}
{ output.bibitem
  format.authors output new.sentence
  format.btitle "title" output.check new.block
  format.date "year" output.check new.block
  format.school.type output
  address "address" bibinfo.check output
  year-presented "year-presented" bibinfo.check output
  format.doi output
  format.note output
  fin.entry
}
FUNCTION {mastersthesis}
{ thesis
}
FUNCTION {phdthesis}
{ thesis
}

%% TODO: booklet; manual; misc; techreport; unpublished
FUNCTION {booklet}
{ output.bibitem
  format.authors output
  format.title "title" output.check
  howpublished "howpublished" bibinfo.check output
  address "address" bibinfo.check output
  format.date output
  format.isbn output
  format.doi output
  format.note output
  fin.entry
}
FUNCTION {manual}
{ output.bibitem
  author empty$
    { organization "organization" bibinfo.check
      duplicate$ empty$ 'pop$
        { output
          address "address" bibinfo.check output
        }
      if$
    }
    { format.authors output.nonnull }
  if$
  format.btitle "title" output.check
  author empty$
    { organization empty$
        {
          address "address" bibinfo.check output
        }
        'skip$
      if$
    }
    {
      organization "organization" bibinfo.check output
      address "address" bibinfo.check output
    }
  if$
  format.edition output
  format.date output
  format.doi output
  format.note output
  fin.entry
}

FUNCTION {misc}
{ output.bibitem
  format.authors output
  format.title output
  howpublished "howpublished" bibinfo.check output
  format.date output
  format.doi output
  format.note output
  fin.entry
  empty.misc.check
}

FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check
  format.title
  "title" output.check
  format.tr.number output.nonnull
  institution "institution" bibinfo.warn output
  address "address" bibinfo.check output
  format.date "year" output.check
  format.doi output
  format.note output
  fin.entry
}

FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check
  format.title "title" output.check
  format.date output
  format.doi output
  format.note "note" output.check
  fin.entry
}

FUNCTION {default.type} { misc }
READ
STRINGS { longest.label }
INTEGERS { number.label longest.label.width }
FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}
FUNCTION {longest.label.pass}
{ number.label int.to.str$ 'label :=
  number.label #1 + 'number.label :=
  label width$ longest.label.width >
    { label 'longest.label :=
      label width$ 'longest.label.width :=
    }
    'skip$
  if$
}
EXECUTE {initialize.longest.label}
ITERATE {longest.label.pass}
FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{"  longest.label  * "}" *
  write$ newline$
  "\expandafter\ifx\csname urlstyle\endcsname\relax"
  write$ newline$
  "  \providecommand{\doi}[1]{DOI \discretionary{}{}{}#1}\else"
  write$ newline$
  "  \providecommand{\doi}{DOI \discretionary{}{}{}\begingroup \urlstyle{rm}\Url}\fi"
  write$ newline$
  "\providecommand{\selectlanguage}[1]{\relax}"
  write$ newline$
  "\providecommand{\bibAnnoteFile}[1]{%"
  write$ newline$
  "  \IfFileExists{#1}{\begin{quotation}\noindent\textsc{Key:} #1\\"
  write$ newline$
  "  \textsc{Annotation:}\ \input{#1}\end{quotation}}{}}"
  write$ newline$
  "\providecommand{\bibAnnote}[2]{%"
  write$ newline$
  "  \begin{quotation}\noindent\textsc{Key:} #1\\"
  write$ newline$
  "  \textsc{Annotation:}\ #2\end{quotation}}"
  write$ newline$
  "  \def\ddmmyyyyi#1/#2/#3\relax{\ddmmyyyy#1-#2-#3\relax}"
  write$ newline$
  "  \def\ddmmyyyy#1-#2-#3\relax{#1\space de\space\mm{#2}\space de\space#3}"
  write$ newline$
  "  \def\mm#1{\ifnum0<0#1\relax"
  write$ newline$
  "  {\ifcase#1 jan.\or jan.\or fev.\or mar.\or abr.\or mai.\or jun.\or jul.\or ago.\or set.\or out.\or nov.\or dez.\fi}"
  write$ newline$
  "  \else#1\fi}"
  write$ newline$
  "  \makeatletter"
  write$ newline$
  "  \def\instring#1#2{TT\fi\begingroup"
  write$ newline$
  "    \edef\x{\endgroup\noexpand\in@{#1}{#2}}\x\ifin@}"
  write$ newline$
  "  \makeatother"
  write$ newline$
  "  \def\fmtdate#1{"
  write$ newline$
  "  \if\instring{-}{#1}\ddmmyyyy#1\relax\else"
  write$ newline$
  "  \if\instring{/}{#1}\ddmmyyyyi#1\relax\fi\fi}"
  write$ newline$
}
EXECUTE {begin.bib}
EXECUTE {init.state.consts}
ITERATE {call.type$}
FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}
EXECUTE {end.bib}
%% End of customized bst file
%%
%% End of file `abnt.bst'.
