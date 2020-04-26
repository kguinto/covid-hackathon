
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
      'Franciscan Prompt Care ',
      'Northwest Medical Plaza
1812 S J St #120, Tacoma, WA 98405',
      'Tacoma',
      'WA',
      'Email me',
      'No',
      '47.244421',
      '-122.4495477'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Prompt Care '
        AND o.latitude = '47.244421'
        AND o.longitude = '-122.4495477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Prompt Care '
        AND o.latitude = '47.244421'
        AND o.longitude = '-122.4495477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Prompt Care '
        AND o.latitude = '47.244421'
        AND o.longitude = '-122.4495477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Prompt Care '
        AND o.latitude = '47.244421'
        AND o.longitude = '-122.4495477'));

COMMIT;
