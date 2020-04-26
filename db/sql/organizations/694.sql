
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
      'Concho County Hospital',
      '614 Eaker St
Eden, TX 76837',
      'Eden',
      'TX',
      '614 Eaker St',
      'Yes',
      '31.2213223',
      '-99.8481426'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concho County Hospital'
        AND o.latitude = '31.2213223'
        AND o.longitude = '-99.8481426'));

COMMIT;
