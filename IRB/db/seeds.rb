nonhuman_form_text = [
    [0 , 0, "Regular use and care of non-human animals housed by the University is the primary responsibility of the appropriate department or division.  Persons using non-human animals for regular academic instruction, companion, or display purposes must abide by all applicable laws and ethical guidelines for the use and care of animals, even when not bound specifically by NIH-OLAW guidelines and requirements.
Research conducted outside of routine academic instruction, or intended for publication or public dissemination such that it reflects or represents the University, will require approval of the IRB/IACUC before such research is conducted.  The IRB/IACUC also encourages faculty to require students to submit this application for courtesy approval and means of student instruction.  
Research projects funded by “any department, agency, or instrumentality of the United States” or otherwise bound by the current adopted Animal Welfare Act and Animal Welfare Regulations must include assurances that all applicable laws, guidelines, and conditions are met regarding the use and care of applicable animals.  The current act and information is available at: USDA-AWIC."],
    [1, 0, "Project Title"],
    [1, 1, "Requested Approval Type
(Note: Final determination is the decision of the IRB)
“Minimal Risk” is defined by the common rule (45 C.F.R. § 46.102(i)) as: “Minimal risk means that the probability and magnitude of harm or discomfort anticipated in the research are not greater in and of themselves than those ordinarily encountered in daily life or during the performance of routine physical or psychological examinations or tests.”"],
    [1, 2, "Full Board (greater than minimal risk to humans or non-human animals, use of hazardous materials, any greater than minimal risk to society or the environment)"],
    [1, 3, "Expedited Review (less than minimal risk to humans, non-human animals, and the environment)"],
    [1, 4, "Exempt Review* (no risk to humans, non-human animals, society, or the environment)"],
    [1, 5, "Courtesy Review: I/we request the IRB review the project for accuracy and validity of the methods and procedures.  (May be required for exempt projects to be published or which will otherwise publically represent the University.)"],
    [1, 6, "Explanation for justification of Expedited or Exempt Review:"],
    
    [2, 0, "Abstract / Summary *Provide an abstract or project summary outlining the basic tenets of the research project (400 words or less).  A proposal draft may be submitted as an appendix in lieu of this section.
"],
    [2, 1, "Project Purpose Provide a summary of the purpose and details of the project.  The summary should include rationale for the research, hypothesis, goals / objectives, and intended use of the study results.   This should be written in non-technical language understandable by a person unfamiliar with this area of research. 
"],
    [2, 2, "Content Areas List all applicable research content or discipline areas (e.g. biology, chemistry, psychology, education, history, journalism, etc). 
"],

    [3, 0, "Describe the non-human animal subjects to be used in detail.  Include the following in your description if applicable: Age, gender, species, other details relevant to the research."],
    [3, 1, "Describe in detail how the animals will be transported, housed and cared for before, during, and after the research.  If the research involves alterations in food, housing, care, or other areas during the conducting of the research, this should be noted here, and thoroughly described in the next question.  Include descriptions and assurances regarding the food/water, housing, temperature/environment, lighting, sanitation, exercise, socialization, handling, care in transportation, and any other applicable area regarding appropriate use and care of animals."],
    [3, 2, "If there will be any alterations in the routine and applicable use and care of animals in order to conduct research, or as an ancillary effect of conducting the research, this should be thoroughly described here.  Include assurances regarding the ethical care and use of the animals in the altered conditions, and the necessity of such alterations in order to conduct the research.  This may be further described in the risk/benefit section below. "],
    [3, 3, "Describe what protections will be used to protect humans during the course of the use and care of the animals before, during, and after the research.  This may include protections regarding sanitation, safety, and mental health / psychological conditions and protections.  Include any foreseeable potential risk to humans related to the care and use of animals in the process of the research."],
    [3, 4, "Provide justification for the use of non-human animals in the research including all potential risks and benefits to animals, researchers, and to society.  The estimated degree of risk and potential may also be included.  Justify the need to use animals as opposed to other means of conducting the research.  [Note: This question is a key component to the IRB decision making process, and must be balanced with alternative means of conducting the research if applicable.] "],
    [3, 5, "Describe any reasonable foreseen pain, discomfort, or distress that may be experienced by the animal subjects, and justify the necessity of utilizing animals in spite of such.  [Note: The common standard in determining pain, discomfort, or distress where previous research determination has not been established, is where such procedure may be expected to cause pain, discomfort, or distress in humans, it is assumed to be expected to cause such in non-human animals.]"],
    [3, 6, "Describe how the animals will be sold, donated, disposed  of, relocated, or euthanized at the conclusion of the study.  If animals will be euthanized, justify the need to do so, and how the euthenization will be conducted in accordance with all applicable laws and ethical guidelines."],
    [3, 7, "Will a licensed veterinarian be utilized to facilitate or supervise the process?  [Consult the AVMA Guidelines on Euthenasia for more information.]"],
    [3, 8, "What other information may be helpful in determining the justification of the use of non-human animals and the assurance of appropriate care."],
    
]

nonhuman_form_text.each do |section, subsection, text|
  Formtext.create(section: section, sub_section: subsection, human_form: false, text_value: text)
end