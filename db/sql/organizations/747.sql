
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
      'Community Health Alliance',
      '680 S Rock Blvd
Reno, NV 89502',
      'Reno',
      'NV',
      'ATTN:  Joseph Mazzucotelli, COO',
      'Yes',
      '39.5024226',
      '-119.7619213'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5024226'
        AND o.longitude = '-119.7619213'));

COMMIT;