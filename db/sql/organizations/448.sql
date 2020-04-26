
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
      'Champion Home HealthCare Inc.',
      '16250 Northland Drive Suite 368
Southfield, MMI 48075',
      'Southfield ',
      'MI',
      'Drop off at 18083 Wildemere St, Detroit, MI 48221',
      'Yes',
      '42.4463758',
      '-83.21061'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champion Home HealthCare Inc.'
        AND o.latitude = '42.4463758'
        AND o.longitude = '-83.21061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champion Home HealthCare Inc.'
        AND o.latitude = '42.4463758'
        AND o.longitude = '-83.21061'));

COMMIT;
