
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
      'Kaiser Permanente - Riverside',
      '10800 Magnolia Ave
Riverside, CA 92505',
      'Riverside',
      'CA',
      '',
      'No',
      '33.9049187',
      '-117.4693433'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Riverside'
        AND o.latitude = '33.9049187'
        AND o.longitude = '-117.4693433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Riverside'
        AND o.latitude = '33.9049187'
        AND o.longitude = '-117.4693433'));

COMMIT;
