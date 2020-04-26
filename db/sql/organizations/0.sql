
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
      'Swedish Ballard',
      '5300 Tallman Ave NW
Seattle, WA 98107',
      'Seattle',
      'WA',
      'Put in donations bin at registration desk or at medical treatment center.',
      'Yes',
      '47.6674625',
      '-122.3795306'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Ballard'
        AND o.latitude = '47.6674625'
        AND o.longitude = '-122.3795306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Ballard'
        AND o.latitude = '47.6674625'
        AND o.longitude = '-122.3795306'));

COMMIT;
