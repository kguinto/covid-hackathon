
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
      'Vanderbilt University Medical Center',
      '1215 21st Ave S
Nashville, TN 37232',
      'Nashville',
      'TN',
      'Attn: Seth Davis MD, Medical Center East – South Tower, Suite 7209
',
      'Yes',
      '36.1417684',
      '-86.8007506'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1417684'
        AND o.longitude = '-86.8007506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1417684'
        AND o.longitude = '-86.8007506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1417684'
        AND o.longitude = '-86.8007506'));

COMMIT;
