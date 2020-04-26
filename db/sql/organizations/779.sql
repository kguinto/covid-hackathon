
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
      'Fletcher Physical Therapy',
      '605 Beechwood Drive 
Havertown, PA 19083',
      'Havertown ',
      'PA',
      'House is on a cliff driveway at 609 ',
      'Yes',
      '39.9875772',
      '-75.2909923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fletcher Physical Therapy'
        AND o.latitude = '39.9875772'
        AND o.longitude = '-75.2909923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fletcher Physical Therapy'
        AND o.latitude = '39.9875772'
        AND o.longitude = '-75.2909923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fletcher Physical Therapy'
        AND o.latitude = '39.9875772'
        AND o.longitude = '-75.2909923'));

COMMIT;
