
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
      'Sutter Delta Medical Center ',
      '3901 Lone Tree Way
Antioch, CA 94509',
      'Antioch',
      'CA',
      'Anesthesia Department - Henry Liu, M.D.',
      'Yes',
      '37.9825348',
      '-121.8029078'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Delta Medical Center '
        AND o.latitude = '37.9825348'
        AND o.longitude = '-121.8029078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Delta Medical Center '
        AND o.latitude = '37.9825348'
        AND o.longitude = '-121.8029078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Delta Medical Center '
        AND o.latitude = '37.9825348'
        AND o.longitude = '-121.8029078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Delta Medical Center '
        AND o.latitude = '37.9825348'
        AND o.longitude = '-121.8029078'));

COMMIT;
