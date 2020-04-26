
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
      'OnPointe Arlington',
      '800 W Randol Mill Rd 6th floor
Arlington, TX 76012',
      'Arlington',
      'TX',
      'Please call to coordinate drop off in parking lot- 682-276-8700',
      'If unopened we''ll take it!',
      '32.7490985',
      '-97.1159177'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Arlington'
        AND o.latitude = '32.7490985'
        AND o.longitude = '-97.1159177'));

COMMIT;
