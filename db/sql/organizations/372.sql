
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
      'Memorial Hermann Home Health',
      '909 Frostwood Dr
Houston, TX 77024',
      'Houston ',
      'TX',
      'Memorial Hermann Home Health
Attn: Michelle Sullivan
909 Frostwood Dr
Houston TX, 77024
Leave at Security Desk; have security guard to call me when delivered.  ',
      'Yes',
      '29.7800339',
      '-95.5484392'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Home Health'
        AND o.latitude = '29.7800339'
        AND o.longitude = '-95.5484392'));

COMMIT;
