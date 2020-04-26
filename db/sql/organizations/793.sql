
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'SWGA - Southwest Gastroenterology',
      '7788 Jefferson St NE
Albuquerque, NM 87109',
      'Albuquerque',
      'NM',
      'West entrance, Attn: Kim Ring RN',
      'unsure need mor info',
      '35.1707408',
      '-106.5884979'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SWGA - Southwest Gastroenterology'
        AND o.latitude = '35.1707408'
        AND o.longitude = '-106.5884979'));

COMMIT;
