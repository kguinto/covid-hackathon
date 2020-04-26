
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
      'Summit Care',
      '2123 Centre Pointe Blvd
Tallahassee, FL 32308',
      'Tallahassee',
      'FL',
      'Attn: Josh Byers',
      'Yes',
      '30.4752772',
      '-84.2391989'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Care'
        AND o.latitude = '30.4752772'
        AND o.longitude = '-84.2391989'));

COMMIT;