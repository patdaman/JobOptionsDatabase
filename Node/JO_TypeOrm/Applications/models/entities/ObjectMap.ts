import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";


@Entity("ObjectMap",{schema:"dbo"})
@Index("UNQ_ObjectMap",["Name","Active",],{unique:true})
export class ObjectMap {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"Name"
        })
    Name:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Description"
        })
    Description:string | null;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"TableName"
        })
    TableName:string;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"('dbo')",
        name:"SchemaName"
        })
    SchemaName:string;
        

    @Column("bit",{ 
        nullable:false,
        default:"((1))",
        name:"Active"
        })
    Active:boolean;
        

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
        
}
