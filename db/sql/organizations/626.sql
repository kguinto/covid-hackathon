
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
      'Vestal Volunteer Emergency Squad ',
      '324 Myrtle St
Vestal, NY 13850',
      'Vestal',
      'NY',
      '',
      'Yes',
      '42.0957712',
      '-76.0220396'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vestal Volunteer Emergency Squad '
        AND o.latitude = '42.0957712'
        AND o.longitude = '-76.0220396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vestal Volunteer Emergency Squad '
        AND o.latitude = '42.0957712'
        AND o.longitude = '-76.0220396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vestal Volunteer Emergency Squad '
        AND o.latitude = '42.0957712'
        AND o.longitude = '-76.0220396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vestal Volunteer Emergency Squad '
        AND o.latitude = '42.0957712'
        AND o.longitude = '-76.0220396'));

COMMIT;
