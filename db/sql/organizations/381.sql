
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
      'Steven J. Waltrip, M.D. inc.',
      '120 S Spalding Dr #400
Beverly Hills, CA 90212',
      'Beverly Hills',
      'CA',
      '120 S Spalding Dr
Suite 400',
      'Yes',
      '34.0662435',
      '-118.4085994'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Steven J. Waltrip, M.D. inc.'
        AND o.latitude = '34.0662435'
        AND o.longitude = '-118.4085994'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Steven J. Waltrip, M.D. inc.'
        AND o.latitude = '34.0662435'
        AND o.longitude = '-118.4085994'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Steven J. Waltrip, M.D. inc.'
        AND o.latitude = '34.0662435'
        AND o.longitude = '-118.4085994'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Steven J. Waltrip, M.D. inc.'
        AND o.latitude = '34.0662435'
        AND o.longitude = '-118.4085994'));

COMMIT;
