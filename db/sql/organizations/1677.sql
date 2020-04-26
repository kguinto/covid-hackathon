
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
      'St John Emergency Department ',
      '22101 Moross Rd
Detroit, MI 48236',
      'Detroit',
      'MI',
      'Call 313-995-8886 and drop off to the ED Administration Office. Ask for Patricia.',
      'No',
      '42.4192825',
      '-82.9145646'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St John Emergency Department '
        AND o.latitude = '42.4192825'
        AND o.longitude = '-82.9145646'));

COMMIT;
