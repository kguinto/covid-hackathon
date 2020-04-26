
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
      'Voices for Independence ',
      '1432 Wilkins Rd
Erie, PA 16505',
      'Erie',
      'PA',
      'Front door drop off please. ',
      'Yes',
      '42.0785232',
      '-80.2024131'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Voices for Independence '
        AND o.latitude = '42.0785232'
        AND o.longitude = '-80.2024131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Voices for Independence '
        AND o.latitude = '42.0785232'
        AND o.longitude = '-80.2024131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Voices for Independence '
        AND o.latitude = '42.0785232'
        AND o.longitude = '-80.2024131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Voices for Independence '
        AND o.latitude = '42.0785232'
        AND o.longitude = '-80.2024131'));

COMMIT;
