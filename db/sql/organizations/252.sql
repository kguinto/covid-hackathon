
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
      'CareOne Internal Medicine ',
      '1800 Town Center Dr STE 416
Reston, VA 20190',
      'Reston ',
      'VA',
      'Office front door is open. Suite 416',
      'Yes',
      '38.9635177',
      '-77.3648123'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne Internal Medicine '
        AND o.latitude = '38.9635177'
        AND o.longitude = '-77.3648123'));

COMMIT;
