
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
      'St Marys Hospital',
      '5801 Bremo Rd
Richmond, VA 23226',
      'Richmond',
      'VA',
      'Glen Allen',
      'No',
      '37.5842894',
      '-77.5126186'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Hospital'
        AND o.latitude = '37.5842894'
        AND o.longitude = '-77.5126186'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Hospital'
        AND o.latitude = '37.5842894'
        AND o.longitude = '-77.5126186'));

COMMIT;
