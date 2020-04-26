
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
      'Jefferson City Medical Group',
      '1241 W Stadium Blvd
Jefferson City, MO 65109',
      'Jefferson City',
      'MO',
      'Curbside drop off or mail',
      'Yes',
      '38.570238',
      '-92.2143669'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson City Medical Group'
        AND o.latitude = '38.570238'
        AND o.longitude = '-92.2143669'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson City Medical Group'
        AND o.latitude = '38.570238'
        AND o.longitude = '-92.2143669'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson City Medical Group'
        AND o.latitude = '38.570238'
        AND o.longitude = '-92.2143669'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson City Medical Group'
        AND o.latitude = '38.570238'
        AND o.longitude = '-92.2143669'));

COMMIT;
