
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
      'Monmouth Medical Center, Southern Campus',
      '600 River Ave
Lakewood, NJ 08701',
      'Lakewood',
      'NJ',
      '600 River Avenue',
      'Yes',
      '40.0731927',
      '-74.218758'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center, Southern Campus'
        AND o.latitude = '40.0731927'
        AND o.longitude = '-74.218758'));

COMMIT;
