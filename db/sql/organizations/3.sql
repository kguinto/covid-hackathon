
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
      'Moab Regional Hospital',
      '450 Williams Way
Moab, UT 84532',
      'Moab',
      'UT',
      'TBD',
      'Yes',
      '38.5751558',
      '-109.5597751'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moab Regional Hospital'
        AND o.latitude = '38.5751558'
        AND o.longitude = '-109.5597751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moab Regional Hospital'
        AND o.latitude = '38.5751558'
        AND o.longitude = '-109.5597751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moab Regional Hospital'
        AND o.latitude = '38.5751558'
        AND o.longitude = '-109.5597751'));

COMMIT;
