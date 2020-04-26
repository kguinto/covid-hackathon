
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
      'San Mateo County Medical Center',
      '1600 Floribunda Avenue
Hillsborough CA 94010',
      'San Mateo',
      'CA',
      'Drop off in front of Hillsborough City Hall, there is a donation box under surveillance by the police departent. Contact: John Jurow at jjurow@smcgov.org or 650-333-5634. Place small goods in a ziplock bag if possible. ',
      'Yes',
      '37.5775188',
      '-122.356228'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR hoods (personal air purifiers) (with batteries',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('motors',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('filters)',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('electronic devices for comfort/communication - Kindles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('tablets (ipads',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('android',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('etc) with their chargers to help patients in isolation',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Mateo County Medical Center'
        AND o.latitude = '37.5775188'
        AND o.longitude = '-122.356228'));

COMMIT;
