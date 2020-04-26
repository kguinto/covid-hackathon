
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
      'Auburn Crest Hospice',
      '4334 N. Bright Angel Ave.
Meridian, ID 83646',
      'Meridian',
      'ID',
      'Ring bell at front door for delivery',
      'Yes',
      '43.6440177',
      '-116.3748202'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auburn Crest Hospice'
        AND o.latitude = '43.6440177'
        AND o.longitude = '-116.3748202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auburn Crest Hospice'
        AND o.latitude = '43.6440177'
        AND o.longitude = '-116.3748202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auburn Crest Hospice'
        AND o.latitude = '43.6440177'
        AND o.longitude = '-116.3748202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auburn Crest Hospice'
        AND o.latitude = '43.6440177'
        AND o.longitude = '-116.3748202'));

COMMIT;
