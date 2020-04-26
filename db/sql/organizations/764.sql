
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
      'Willapa Behavioral Health',
      '300 Ocean Avenue
Raymond, WA 98577',
      'Raymond',
      'WA',
      'Call (360) 942-2303',
      'Yes',
      '46.6812857',
      '-123.735879'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willapa Behavioral Health'
        AND o.latitude = '46.6812857'
        AND o.longitude = '-123.735879'));

COMMIT;
