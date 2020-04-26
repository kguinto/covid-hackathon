
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
      'Kaiser Permanente Santa Clara Medical Center',
      '700 Lawrence Expy
Santa Clara, CA 95051',
      'Santa Clara',
      'CA',
      'Drop off items at the Hospital Main Entrance or call (408) 851-5622


OR


To the ED Main Lobby',
      '',
      '37.3362374',
      '-121.998538'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Santa Clara Medical Center'
        AND o.latitude = '37.3362374'
        AND o.longitude = '-121.998538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Santa Clara Medical Center'
        AND o.latitude = '37.3362374'
        AND o.longitude = '-121.998538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Santa Clara Medical Center'
        AND o.latitude = '37.3362374'
        AND o.longitude = '-121.998538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Santa Clara Medical Center'
        AND o.latitude = '37.3362374'
        AND o.longitude = '-121.998538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Santa Clara Medical Center'
        AND o.latitude = '37.3362374'
        AND o.longitude = '-121.998538'));

COMMIT;
