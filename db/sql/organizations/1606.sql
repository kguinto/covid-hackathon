
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
      'Westchester Medical Center',
      '100 Woods Rd
Valhalla, NY 10595',
      'Valhalla',
      'NY',
      'Email me; will pick up in front of hospital at anyway anytime
Thank you! ',
      'Yes',
      '41.086676',
      '-73.8060649'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Medical Center'
        AND o.latitude = '41.086676'
        AND o.longitude = '-73.8060649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Medical Center'
        AND o.latitude = '41.086676'
        AND o.longitude = '-73.8060649'));

COMMIT;
