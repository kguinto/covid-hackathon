
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
      'Rheumatology Associates of Southern California',
      '23206 Lyons Ave #106
Newhall, CA 91321',
      'Santa Clarita',
      'CA',
      '',
      'Yes',
      '34.3790626',
      '-118.5384873'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Associates of Southern California'
        AND o.latitude = '34.3790626'
        AND o.longitude = '-118.5384873'));

COMMIT;
