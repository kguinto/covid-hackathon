
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
      'Great Lakes Eye Care',
      '2848 Niles Rd
St Joseph, MI 49085',
      'St Joseph ',
      'MI',
      'Attn: Shelby Weaver ',
      'Yes',
      '42.0659755',
      '-86.4689285'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Eye Care'
        AND o.latitude = '42.0659755'
        AND o.longitude = '-86.4689285'));

COMMIT;
