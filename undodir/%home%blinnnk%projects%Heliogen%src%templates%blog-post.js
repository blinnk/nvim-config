Vim�UnDo� ���9q�EO�����f�sBl
uF�(��y��n�                                    `��w    _�                     4        ����                                                                                                                                                                                                                                                                                                                            4          5          V       `��S     �   3   4          5  const [toggleMenu, setToggleMenu] = useState(false)   ;  const [toggleContact, setToggleContact] = useState(false)5��    3                            r               5�_�                    0       ����                                                                                                                                                                                                                                                                                                                            4          4          V       `��T     �   0   2          �   0   2      5��    0                      �                     �    0                      �                     �    0                    �                    �    0                 	   �             	       �    0   	                 �                    �    0   	                 �                    �    0   	                 �                    �    0   	                 �                    �    0   	                 �                    �    0   	              +   �             +       �    0   )                 �                    �    0   )                 �                    �    0   C                  �                     5�_�                    1   D    ����                                                                                                                                                                                                                                                                                                                            5          5          V       `��_     �   0   2        D  const {toggleContact, setToggleContact, toggleMenu, setToggleMenu}5��    0   D                  �                     �    0   E                 �                    �    0   F                 �                    5�_�                       %    ����                                                                                                                                                                                                                                                                                                                            5          5          V       `��e     �               �            5��                          �                      �                          �                      �                         �                     �                         �                     �                         �                     �                      
   �              
       �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                            6          6          V       `��k    �              import {TeamContext}5��                         �                      �                        �                     �                        �                     �                        �                     �       )                 �                     �       )                 �                     �       .                 �                     �       .                 �                     5�_�                        ;    ����                                                                                                                                                                                                                                                                                                                            6          6          V       `��v    �                 :import React, { useEffect, useRef, useState } from 'react'   0import { Link, graphql, navigate } from 'gatsby'   &import { motion } from 'framer-motion'   =import {TeamContext} from '../components/team/TeamContext.js'   import Img from 'gatsby-image'       *import ShareButtons from './share-buttons'       &import { H6 } from '../styles/_global'   Zimport { useGlobalStateContext, useGlobalDispatchContext } from '../context/globalContext'   @import { HeroNav, Menu, LogoContainer } from '../styles/_header'   +import { Logo } from '../assets/svgs/brand'   import {     PageContainer,     PageContent,     Container,   	  Banner,     TitleDetail,     ContentContainer,     ItemContainer,     ImageContainer,     HighlighContainer,     LeftHighlight,     RightHighlight,     Description,     BannerArea,     Block,     BlockLeft,   
  TagLeft,     Span,     MainTitle,     BlockRight,     TagRight,     TagContainer,     FooterContainer,     BackButton,     GroupButton,     ContentArea,     NextTitle,     ArrowNext,   	  Border,     FooterInner,   } from '../styles/_post'   )import Layout from '../components/layout'   #import Seo from '../components/seo'   5import SocialButton from '../components/socialButton'   :import ImagePost2 from '../assets/images/image-post-2.png'       Bconst BlogPostTemplate = ({ data: { previous, next, post } }) => {   _  const {toggleContact, setToggleContact, toggleMenu, setToggleMenu} = useContext(TeamContext);     const ref = useRef(null)   )  const [height, setHeight] = useState(0)   .  const [className, setClassName] = useState()   @  const { currentTheme, cursorStyles } = useGlobalStateContext()   -  const dispatch = useGlobalDispatchContext()       >  const windowGlobal = typeof window !== 'undefined' && window         const openNav = useRef(null)         const motionHeroNav = {       show: {         transition: {           staggerChildren: 0.35,         },       },     }          const motionHeroNavElement = {       initial: {         opacity: 0,         y: -200,       },       animate: {         opacity: 1,         y: 0,         transition: {   '        ease: [0.6, 0.01, -0.05, 0.95],           duration: 0.6,         },       },       exit: {         opacity: 0,         y: -200,         transition: {           ease: 'easeInOut',           duration: 0.6,         },       },     }         // useEffect(() => {   *  //   setHeight(ref.current.clientHeight)     // })       $  const onCursor = (cursorType) => {   K    cursorType = (cursorStyles.includes(cursorType) && cursorType) || false   =    dispatch({ type: 'CURSOR_TYPE', cursorType: cursorType })     }       +  const onChangeSocial = (classActive) => {       setClassName(classActive)     }         const onBack = (event) => {       event.preventDefault()       navigate('/posts')     }       H  // console.log(window.location.protocol + '//' + window.location.host)   
  return (       <Layout         isHomePage         toggleMenu={toggleMenu}   #      setToggleMenu={setToggleMenu}   #      toggleContact={toggleContact}   )      setToggleContact={setToggleContact}         isShowFooter={true}       >   ;      <Seo title={post.title} description={post.excerpt} />         <PageContainer ref={ref}>           <PageContent>   \          <HeroNav variants={motionHeroNav} initial="initial" animate="animate" exit="exit">               <Link to="/">                 <LogoContainer   8                onMouseEnter={() => onCursor('pointer')}   '                onMouseLeave={onCursor}   /                variants={motionHeroNavElement}                 >                   <Logo />                 </LogoContainer>               </Link>   a            <Menu ref={openNav} onMouseEnter={() => onCursor('hovered')} onMouseLeave={onCursor}>                 <motion.div   #                className="contact"   @                onClick={() => setToggleContact(!toggleContact)}   /                variants={motionHeroNavElement}                 >                   Contact                 </motion.div>   h              <motion.button onClick={() => setToggleMenu(!toggleMenu)} variants={motionHeroNavElement}>                   <span></span>                   <span></span>                   <span></span>                 </motion.button>               </Menu>             </HeroNav>           </PageContent>           <Container>             <Banner>               <BannerArea>   <              <TitleDetail>{post?.title || ''}</TitleDetail>   !              <HighlighContainer>   \                <LeftHighlight marginRight="15px">{post?.date || new Date()}</LeftHighlight>                   <Border />   H                <RightHighlight paddingLeft="15px">NEWS</RightHighlight>   "              </HighlighContainer>               </BannerArea>             </Banner>   '          <ContentContainer singlePost>   2            <ItemContainer flexDirection="column">   8              <ImageContainer width="100%" height="628">                   <Img                     fluid={   *                    post?.featuredImage &&   .                    post.featuredImage.node &&   8                    post.featuredImage.node.localFile &&   H                    post.featuredImage.node.localFile.childImageSharp &&   K                    post.featuredImage.node.localFile.childImageSharp.fluid   O                      ? post.featuredImage.node.localFile.childImageSharp.fluid   "                      : ImagePost2                     }                   />                 </ImageContainer>                     <GroupButton>   /                <BackButton onClick={onBack} />   O                <SocialButton className={className} onClick={onChangeSocial} />                 </GroupButton>                     <ContentArea>   S                <Description dangerouslySetInnerHTML={{ __html: post?.content }} />                       <Block>                     <BlockLeft>   0                    <Span>Media Relations</Span>   5                    <MainTitle>Heliogen®</MainTitle>                     </BlockLeft>                     <BlockRight>   @                    <p>Leo Traub, Antenna Group for Heliogen</p>   4                    <p>heliogen@antennagroup.com</p>   +                    <p>+ 1 646 883 3562</p>                     </BlockRight>                   </Block>                   <Block>                     <BlockLeft>   0                    <Span>Media Relations</Span>   4                    <MainTitle>Rio Tinto</MainTitle>                     </BlockLeft>                     <BlockRight>   @                    <p>Leo Traub, Antenna Group for Heliogen</p>   4                    <p>heliogen@antennagroup.com</p>   +                    <p>+ 1 646 883 3562</p>                     </BlockRight>                   </Block>                       <TagContainer>                     <TagLeft>   "                    <h6>TAGS:</h6>                       <ul>   '                      <li>Newsroom</li>                       </ul>                     </TagLeft>   1                  <TagRight alignSelf="flex-end">   "                    <h6>Share</h6>   !                    <ShareButtons   x                      // url={`${windowGlobal.location.protocol + '//' + windowGlobal.location.host + '/' + post?.uri}`}   )                      title={post?.title}   1                      description={post?.excerpt}                       />                     </TagRight>                   </TagContainer>                 </ContentArea>               </ItemContainer>             </ContentContainer>           </Container>         </PageContainer>         {next && (           <FooterContainer>             <FooterInner>   F            <button type="submit" onClick={() => navigate(next?.uri)}>                 NEXT               </button>   A            <NextTitle href={next?.uri}>{next?.title}</NextTitle>               <ArrowNext />             </FooterInner>           </FooterContainer>         )}       </Layout>     )   }       export default BlogPostTemplate       !export const pageQuery = graphql`     query BlogPostById(   P    # these variables are passed in via createPage.pageContext in gatsby-node.js       $id: String!       $previousPostId: String       $nextPostId: String     ) {   &    # selecting the current post by id   #    post: wpPost(id: { eq: $id }) {         id   	      uri         excerpt         content         title   )      date(formatString: "MMMM DD, YYYY")         featuredImage {           node {             sourceUrl             altText             localFile {               childImageSharp {   3              fluid(maxWidth: 1000, quality: 100) {   :                ...GatsbyImageSharpFluid_withWebp_noBase64                 }               }             }   	        }         }       }   9    # this gets us the previous post by id (if it exists)   3    previous: wpPost(id: { eq: $previousPostId }) {   	      uri         title       }   5    # this gets us the next post by id (if it exists)   +    next: wpPost(id: { eq: $nextPostId }) {   	      uri         title       }     }   `5��                                �              5��