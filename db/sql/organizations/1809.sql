
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
      'Veterans Affairs Hospital',
      '2002 Holcombe Blvd
Houston, TX 77030',
      'Houston',
      'TX',
      'Please email barbra.bell@va.gov one day in advance to coordinate drop off.',
      'Yes',
      '29.7001034',
      '-95.3889654'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Homemade masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Veterans Affairs Hospital'
        AND o.latitude = '29.7001034'
        AND o.longitude = '-95.3889654'));

COMMIT;
