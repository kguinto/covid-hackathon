
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
      'Community Health Centers of the Central Coast',
      '2050 S Blosser Rd
Santa Maria, CA 93458',
      'Santa Maria',
      'CA',
      '2050 S Blosser Rd, drop off to the back of the building. There is a open gate on the left side of the building that anyone can access. ',
      'Yes',
      '34.9226521',
      '-120.45333'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Permeable gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Centers of the Central Coast'
        AND o.latitude = '34.9226521'
        AND o.longitude = '-120.45333'));

COMMIT;
