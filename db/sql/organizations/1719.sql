
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
      'Brookdale Medical Center',
      '1 Brookdale Plaza
Brooklyn, NY 11212',
      'Brooklyn',
      'NY',
      'Call to schedule dropoff. PPE has been stolen at this site',
      'Yes',
      '40.6549132',
      '-73.9126971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

COMMIT;
