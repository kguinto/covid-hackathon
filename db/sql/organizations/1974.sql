
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
      'Kaiser Permanente',
      '1255 W Arrow Hwy
San Dimas, CA 91773',
      'San Dimas',
      'CA',
      'Mail to above address: Attn : Cheryl Chan. (Business hours M-T 8:30am to 6:30pm. Friday 8:30am to 5:30pm)',
      'Yes',
      '34.1072006',
      '-117.8315393'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente'
        AND o.latitude = '34.1072006'
        AND o.longitude = '-117.8315393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente'
        AND o.latitude = '34.1072006'
        AND o.longitude = '-117.8315393'));

COMMIT;
