
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
      'Kaiser Permanente Panorama City',
      '13651 Willard St
Panorama City, CA 91402',
      'Panorama City',
      'CA',
      '2nd Floor Main Hospital Anesthesia Department',
      'Yes',
      '34.2189257',
      '-118.4302294'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City'
        AND o.latitude = '34.2189257'
        AND o.longitude = '-118.4302294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City'
        AND o.latitude = '34.2189257'
        AND o.longitude = '-118.4302294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City'
        AND o.latitude = '34.2189257'
        AND o.longitude = '-118.4302294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City'
        AND o.latitude = '34.2189257'
        AND o.longitude = '-118.4302294'));

COMMIT;
