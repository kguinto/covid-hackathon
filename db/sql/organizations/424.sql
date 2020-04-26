
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
      'Metrohealth Medical Center',
      '2500 Metrohealth Dr
Cleveland, OH 44109',
      'Cleveland',
      'OH',
      'Drop off coordinated via Dr. Stager 216.778.2858vg',
      'unsure',
      '41.4622606',
      '-81.697669'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metrohealth Medical Center'
        AND o.latitude = '41.4622606'
        AND o.longitude = '-81.697669'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metrohealth Medical Center'
        AND o.latitude = '41.4622606'
        AND o.longitude = '-81.697669'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metrohealth Medical Center'
        AND o.latitude = '41.4622606'
        AND o.longitude = '-81.697669'));

COMMIT;
