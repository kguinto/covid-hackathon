
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
      'Delmar Gardens of Overland Park',
      '12100 W 109th St
Overland Park, KS 66210',
      'Overland Park',
      'KS',
      'You can give it to the Director of Nursing Peter Gitau or nurse Benson',
      'No',
      '38.9317575',
      '-94.7272276'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delmar Gardens of Overland Park'
        AND o.latitude = '38.9317575'
        AND o.longitude = '-94.7272276'));

COMMIT;
