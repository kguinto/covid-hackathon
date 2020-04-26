
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
      'Concentra Urgent Care',
      ' 4600 S Park Ave Ste 5
Tucson, AZ 85714',
      'Tucson',
      'AZ',
      'curbside procedure',
      'Yes',
      '32.1679656',
      '-110.9567176'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concentra Urgent Care'
        AND o.latitude = '32.1679656'
        AND o.longitude = '-110.9567176'));

COMMIT;
