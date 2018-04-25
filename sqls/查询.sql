select id58.aac001,
id58.aaz434,
id58.aaz430,
id58.aie240,
id58.aie237,
id58.aie218,
id58.aae450,
id58.aae460,
id58.aie134,
id58.aie239, 
id58.aie136,
id58.aaa119,
id24.aie133,
id24.aie138,
id58.aie095 
from id58 a,id24 b 
where id58.aaz430=id24.aaz430  
and id58.aie099='4' 

    ValueBeanQueryBuilder<?> builder = QueryFactory.createValueBeanQueryBuilder(sb, dto);
    builder.appendNotBlank(" and id58.aac001 = :aac001", "aac001", QueryFactory.NONE_LIKE);// 个人ID
    //builder.appendNotBlank(" and id58.aab001 = :aab001", "aab001", QueryFactory.NONE_LIKE);// 单位
    builder.appendNotBlank(" and id58.aaa119 = :aaa119", "aaa119", QueryFactory.NONE_LIKE);// 账户类型
    builder.appendNotBlank(" and id58.aie136 >= :aae041", "aae041", QueryFactory.NONE_LIKE);// 开始时间
    builder.appendNotBlank(" and id58.aie136 <= :aae042", "aae042", QueryFactory.NONE_LIKE);// 结束时间

    builder.append(" order by id58.aie136 desc,id58.aaa119,id24.aie138,id58.aae460,id58.aae450 
