
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
      'ConvenientMD',
      '296 Old Oak St
Pembroke, MA 02359',
      'Pembroke',
      'MA',
      'Curbside or mail with Attn: Lauren Riley',
      'Yes',
      '42.1077525',
      '-70.7645629'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD'
        AND o.latitude = '42.1077525'
        AND o.longitude = '-70.7645629'));

COMMIT;
