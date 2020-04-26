
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
      'Sabetha Community Hospital',
      'Oregon St & 14th St
Sabetha, KS 66534',
      'Sabetha',
      'KS',
      'Drop off at the old ER on the south side. ',
      'No',
      '39.8997686',
      '-95.807109'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabetha Community Hospital'
        AND o.latitude = '39.8997686'
        AND o.longitude = '-95.807109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabetha Community Hospital'
        AND o.latitude = '39.8997686'
        AND o.longitude = '-95.807109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabetha Community Hospital'
        AND o.latitude = '39.8997686'
        AND o.longitude = '-95.807109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabetha Community Hospital'
        AND o.latitude = '39.8997686'
        AND o.longitude = '-95.807109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabetha Community Hospital'
        AND o.latitude = '39.8997686'
        AND o.longitude = '-95.807109'));

COMMIT;
