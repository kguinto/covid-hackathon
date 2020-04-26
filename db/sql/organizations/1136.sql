
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
      'Farragut Medical And Travel Care',
      '818 Connecticut Ave NW, Suite #501
Washington, DC 20006',
      'Washington',
      'DC',
      'Please send to the mailing address (Attn: Bonnie) or drop off.',
      'Yes',
      '38.9008384',
      '-77.0386806'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Farragut Medical And Travel Care'
        AND o.latitude = '38.9008384'
        AND o.longitude = '-77.0386806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Farragut Medical And Travel Care'
        AND o.latitude = '38.9008384'
        AND o.longitude = '-77.0386806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Farragut Medical And Travel Care'
        AND o.latitude = '38.9008384'
        AND o.longitude = '-77.0386806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Farragut Medical And Travel Care'
        AND o.latitude = '38.9008384'
        AND o.longitude = '-77.0386806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Farragut Medical And Travel Care'
        AND o.latitude = '38.9008384'
        AND o.longitude = '-77.0386806'));

COMMIT;
