
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
      'Presentation Rehabilitation ',
      '10 Bellamy St
Brighton, MA 02135',
      'Brighton',
      'MA',
      'Please bring to front desk or mail.  We appreciate you!',
      'Yes',
      '42.3547685',
      '-71.1682919'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presentation Rehabilitation '
        AND o.latitude = '42.3547685'
        AND o.longitude = '-71.1682919'));

COMMIT;
