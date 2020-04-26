
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
      'Harborview Emergency Department',
      '325 9th Ave
Seattle, WA 98104',
      'Seattle',
      'WA',
      'Write “masks for emergency department” on package. Drive to ER entrance, there are screeners and security workers outside who can receive them.',
      'No',
      '47.6039634',
      '-122.3241159'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harborview Emergency Department'
        AND o.latitude = '47.6039634'
        AND o.longitude = '-122.3241159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harborview Emergency Department'
        AND o.latitude = '47.6039634'
        AND o.longitude = '-122.3241159'));

COMMIT;
