import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {application} from "./Application";


@Entity("Education",{schema:"dbo"})
export class education {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.educations,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>application, application=>application.educations,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:application | null;


    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"Level"
        })
    Level:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Location"
        })
    Location:string | null;
        

    @Column("float",{ 
        nullable:true,
        precision:53,
        name:"YearsAttended"
        })
    YearsAttended:number | null;
        

    @Column("bit",{ 
        nullable:true,
        default:"((0))",
        name:"Graduate"
        })
    Graduate:boolean | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Subjects"
        })
    Subjects:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"DegreeType"
        })
    DegreeType:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"Major"
        })
    Major:string | null;
        

    @Column("float",{ 
        nullable:true,
        precision:53,
        name:"GPA"
        })
    GPA:number | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"City"
        })
    City:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"State"
        })
    State:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Address"
        })
    Address:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        name:"Other"
        })
    Other:string | null;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"CreateDate"
        })
    CreateDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"CreateUser"
        })
    CreateUser:string;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"ModifyDate"
        })
    ModifyDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"ModifyUser"
        })
    ModifyUser:string;
        
    constructor(init?: Partial<education>) {
		Object.assign(this, init);
	}
}
