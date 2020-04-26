
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
      'Zuckerberg San Francisco General Hospital',
      '1001 Potrero Ave
San Francisco, CA 94110',
      'San Francisco',
      'CA',
      'For now, call ahead: call the switchboard (628-206-8000), ask for "Donations Medical Equipment" or the front desk to arrange drop-off at the main entrance off 23rd St.',
      'No',
      '37.7557265',
      '-122.4047381'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General Hospital'
        AND o.latitude = '37.7557265'
        AND o.longitude = '-122.4047381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General Hospital'
        AND o.latitude = '37.7557265'
        AND o.longitude = '-122.4047381'));

COMMIT;
