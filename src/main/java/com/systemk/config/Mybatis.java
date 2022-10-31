package com.systemk.config;

import org.springframework.context.annotation.Configuration;

@Configuration
public class Mybatis {
//	@Bean
//	public SqlSessionFactory sqlSessionFactoryBean(@Qualifier("maria") DataSource dataSource) throws Exception {
//		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//		sqlSessionFactoryBean.setDataSource(dataSource);
//		/* 맵퍼 xml 파일 경로 설정 */
//		Resource[] resources = new PathMatchingResourcePatternResolver()
//				.getResources("classpath*:com/systemk/mapper/*.xml");
//		sqlSessionFactoryBean.setVfs(SpringBootVFS.class);
//		sqlSessionFactoryBean.setMapperLocations(resources);
//		/* alias 설정 */
//		sqlSessionFactoryBean.setTypeAliasesPackage("com.systemk.vo.vo_m");
//
//		SqlSessionFactory sqlSessionFactory = sqlSessionFactoryBean.getObject();
//
//		org.apache.ibatis.session.Configuration configuration = sqlSessionFactory.getConfiguration();
//		configuration.setMapUnderscoreToCamelCase(true);
//
//		return sqlSessionFactory;
//	}
}
