
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
      'Community Options, Inc.',
      '1104 Fernwood Avenue
Suite 101
Camp Hill, PA 17011',
      'Camp Hill',
      'PA',
      '1104 Fernwood Ave
Suite 101',
      'No',
      '40.2223691',
      '-76.9378838'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.2223691'
        AND o.longitude = '-76.9378838'));

COMMIT;
